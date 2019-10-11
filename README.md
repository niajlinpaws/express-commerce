# express-commerce

`express-commerce` is a Node.js E-commerce app built on (Express, Handlebars, MongoDB) and PayPal payments forked from @mrvautin inspirational work.

## Installation

1. Install dependencies: `npm install`
2. Start application: `npm start --production`
3. Visit [http://127.0.0.1:1111](http://127.0.0.1:1111) in your browser


## Admin

Visit: [http://127.0.0.1:1111/admin](http://127.0.0.1:1111/admin)

A new user form will be shown where a user can be created.

### Styling

Adding your own custom style is done by accessing the `Admin` panel then selecting `General settings`.

#### Demo images

Sample homepage
![Sample homepage](https://mrvautin.com/content/images/2018/01/expressCart-demo.jpg)

Admin page
![Admin page](https://mrvautin.com/content/images/2018/01/admin-settings.png)

Popout cart
![Popout cart](https://mrvautin.com/content/images/2018/02/popout-cart.png)

Great themes
![Great themes](https://mrvautin.com/content/images/2018/02/expresscart-mono-theme.png)

##### Paypal (Payments)

The Paypal config file is located: `/config/paypal.json`. A example Paypal settings file is provided:

```
{
    "mode": "live", // sandbox or live
    "client_id": "this_is_not_real",
    "client_secret": "this_is_not_real",
    "paypalCartDescription": "expressCart", // Shows as the Paypal description
    "paypalCurrency": "USD" // The Paypal currency to charge in
}
```
Note: The `client_id` and `client_secret` is obtained from your Paypal account.

## Email settings

You will need to configure your SMTP details for express-commerce to send email receipts to your customers.

You will need to consult your email provider for the relevant details.

##### Gmail settings

- `Email SMTP Host` = smtp.gmail.com
- `Email SMTP Port` = 465
- `Email SMTP secure` = True/Checked
- `Email SMTP Username` = example@gmail.com
- `Email SMTP Password` = yourpassword (you may need to setup an application specific password for this to work)