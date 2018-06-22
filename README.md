Split the Donations
====

I have noticed a common scheme for event organizers and venues.

> Split the donations (between the event organizer) and a venue (bar, coffee shop, coworking space...) (50 / 50)%

* Front end (coming up soon)
* [contract code](https://github.com/mohamedhayibor/splitDonations/blob/master/contracts/splitDonations.sol) | deployed on [rinkeby](https://rinkeby.etherscan.io/address/0xe50a24d1bfb94d11df0df6d226d382ddeb451def).

Usage:
=========

Just tell the attendees the address of your contract. Work as any simple transfers in Ethereum.

Notes:
=====

* Assumption: The organizer will make sure of the conversion to fiat to be given to non-profits.
* The contract is the owner of the funds until split between event organanizer and venue owner.
* Working on the front-end but for now, you can interact with it with [mycrypto](https://mycrypto.com/contracts/interact)


Dev setup:
========

For local development, you must run a [local server](https://github.com/MetaMask/faq/blob/master/DEVELOPERS.md#globe_with_meridians-https---web-server-required).

Easy/fast way: go to source path

```sh
$ python -m SimpleHTTPServer
```

Then go to [localhost:8000](http://localhost:8000/)
