# <p align="center">Tracker for the Temporary Immigration Policy of 2021 🇨🇦</p>

<p align="center">
    <a href="#overview">Overview</a>
    &nbsp; • &nbsp;
    <a href="#technologies">Machine Requirements</a>
    &nbsp; • &nbsp;
    <a href="#usage">Usage</a>
    &nbsp; • &nbsp;
    <a href="#license">License</a>
</p>

<p align="center">
<img src="https://img.shields.io/github/languages/count/luisarojas/temp-imm-policy-tracker.svg?style=flat" alt="languages-badge"/>
<img src="https://img.shields.io/github/license/luisarojas/temp-imm-policy-tracker" alt="license-badge">
<img src="https://img.shields.io/github/repo-size/luisarojas/temp-imm-policy-tracker" alt="repo-size-badge">
<img src="https://img.shields.io/github/last-commit/luisarojas/temp-imm-policy-tracker" alt="last-commit-badge">
<img src="https://img.shields.io/github/issues-raw/luisarojas/temp-imm-policy-tracker" alt="open-issues-badge">
</p>

## Overview

The script uses the ["Temporary public policy to facilitate the granting of permanent residence for foreign nationals in Canada"](https://www.canada.ca/en/immigration-refugees-citizenship/corporate/mandate/policies-operational-instructions-agreements/public-policies/trpr-international-graduates.html) website to check if the alerts in it have changed at all. The check is done every day, roughly at 9 AM. If any changes are identified, an e-mail will be sent to all recipients specified in the `env.py` file (not included).


## Machine Requirements

Docker is the only tool required on the machine running this program.

## Usage

### Inputs

No command-line inputs are required; only your `env.py` is needed.

**What should your `env.py` look like?**

```python
ENV = {
    'recipient': {
        'emails': ['recipient1@mail.com', 'recipient2@mailcom']
    },
    'sender': {
        'email': 'sender@email.com',
        'password': 'senderpassword'
    }
}
```
<p style="color: grey;">Note: If using Gmail as sender, you should enable the setting to allow access from "less secure apps".</p>

### Testing Environment

When the `testing` variable is set to `True`:

* The `test.html` file will be used as source, instead of the URL set.
* An e-mail will always be sent, regardless of if there is a change or not.
* Only the first recipient in the `emails` list will receive the e-mail.
* The e-mail subject will indicate whether the e-mail is a test or not.

### Execution

```
$ make
```

## License

This project was released under the [MIT License](http://www.opensource.org/licenses/MIT).

Copyright &copy; 2021 Luisa Rojas

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
