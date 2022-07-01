const { expect, use } = require('chai');
const { ethers } = require('hardhat');

use(require('chai-as-promised'));

describe('Contract', function () {
  before(async function () {
    this.Conversion = await ethers.getContractFactory('Conversion');
  });

  beforeEach(async function () {
    this.conversion = await this.Conversion.deploy();
    await this.conversion.deployed();
  });

  it('should convert without error', async function () {
      //Non functional test written ONLY to display gas requriements. 
      await this.conversion.storeStr(12345678912345);
      expect(true).to.equal(true);
  });
});
