const { expect, use } = require('chai');
const { ethers } = require('hardhat');

use(require('chai-as-promised'));

describe('Contract', function () {
  before(async function () {
    this.Contract = await ethers.getContractFactory('Contract');
  });

  beforeEach(async function () {
    this.contract = await this.Contract.deploy();
    await this.contract.deployed();
  });

  it('should mint without error', async function () {
      //Non functional test written ONLY to display gas requriements. 
      await this.contract.mint();
      expect(true).to.equal(true);
  });
});
