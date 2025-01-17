const {expect}= require('chai');
const {ethers}= require('hardhat');

describe('Counter', ()=>{
    it('stores the count', async()=>{
        const Counter= await ethers.getContractFactory('Counter');
        const counter= await Counter.deploy('MyCounter',1);
        const count= await counter.count()
        expect(count).to.equal(1)
    })
})