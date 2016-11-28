/*
 * led-gpio-key.c -- Driver for gpio buttons with a led
 *
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
*/

#include <linux/module.h>
#include <linux/platform_device.h>
#include <linux/init.h>
#include <linux/interrupt.h>
#include <linux/irq.h>
#include <linux/delay.h>
#include <linux/input.h>
#include <linux/gpio.h>
#include <linux/of.h>
#include <linux/of_platform.h>
#include <linux/of_gpio.h>
#include <linux/of_irq.h>
#include <linux/regulator/consumer.h>

#define DRV_NAME "led-gpio-key"

struct led_gpio_key_drvdata {
	struct input_dev *input;
	struct gpio_desc *gpio;
	unsigned int buttoncode;
	int irq;
};

/* call me when an interrupt happens, but not in interrupt context! 
static void led_gpio_key_report_state(struct led_gpio_key_drvdata *ddata)
{
	struct input_dev *input = ddata->input;

	input_report_key(input, ddata->buttoncode,
		gpiod_get_value_cansleep(ddata->gpio));
	
	input_sync(input);
	
}
*/

static int led_gpio_key_probe(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct input_dev *input;
	struct led_gpio_key_drvdata *ddata;
	int err = -ENOMEM;

	ddata = devm_kzalloc(dev, sizeof(struct led_gpio_key_drvdata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	input = devm_input_allocate_device(dev);
	if (!input)
		return -ENOMEM;

	ddata->input = input;
	platform_set_drvdata(pdev, ddata);
	input_set_drvdata(input, ddata);

	input->name = pdev->name;
	input->phys = DRV_NAME"/input0";
	input->dev.parent = &pdev->dev;

	input->id.bustype = BUS_HOST;
	input->id.vendor = 0x0001;
	input->id.product = 0x0001;
	input->id.version = 0x0100;

	set_bit(EV_KEY, input->evbit);

	err = device_property_read_u32(dev, "linux,code", &ddata->buttoncode);
	if (err) {
		dev_err(dev, "Button without keycode!\n");
		goto fail;
	}

	set_bit(ddata->buttoncode, input->keybit);
	
	ddata->gpio = devm_gpiod_get(&pdev->dev, NULL);
	if (IS_ERR(ddata->gpio)) {
		dev_err(dev, "unable to allocate gpio\n");
		err = PTR_ERR(ddata->gpio);
		goto fail;
	}

	ddata->irq = gpiod_to_irq(ddata->gpio);
	if (ddata->irq < 0) {
		dev_err(dev, "unable to get irq for gpio\n");
		err = ddata->irq;
		goto fail;
	}

	// This is a good spot to install the irq handler

	err = input_register_device(input);
	if (err) {
		dev_err(dev, "unable to register input device\n");
		goto fail;
	}

	return 0;
fail:
	return err;
}


static const struct of_device_id led_gpio_key_of_match[] = {
	{ .compatible = "not-correct", },
	{ },
};


static struct platform_driver led_gpio_key_device_driver = {
	.probe		= led_gpio_key_probe,
	.driver		= {
	.name		= DRV_NAME,
	.of_match_table = of_match_ptr(led_gpio_key_of_match),
	}
};

module_platform_driver(led_gpio_key_device_driver);

MODULE_DEVICE_TABLE(of, led_gpio_key_of_match);
MODULE_AUTHOR("Your Name <your.name@intel.com>");
MODULE_DESCRIPTION("Driver for gpio buttons with a led");
MODULE_LICENSE("GPL v2");
