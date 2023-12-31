pragma solidity ^0.8.9;

contract FreezableRegistry{
    
    mapping(uint256 => Version) version;
    mapping(address => Ecosystem[]) userEcosystems;

    struct Version{
        address versionPointer;
        bool isActive;
    }
    struct Ecosystem{
        bytes[] nonStateVector;
        bytes[] stateVector;
        address ecosystemAddress;
        bytes[] nonStateParameters;
        uint256 versionId;
        bool locked;
        Facet[] facets;
    }

    struct Facet{
        bytes4[] selectors; //although only setters come and go
        address facetAddress;
    }
    struct FacetDeploy{
        bytes byteCode;
        bytes nonStateParams;
    }
    //Try to dump all actions into the external contract. 
    //Should either be pulling or pushing all the "dyanimc types", not both
    function deployVersion(uint256 _id, address _versionPointer, bool isActive) public {
        //require null Version
        //require onlyowner
        //require 
        //register address pointer
        //deploy non-frozen to verify ALL hashes in version pointer
        // ( deploy via this or link here)
        // instantiate version and store
    }

    //should just deploy new ecosystem 
    //This could just be a setup stage
    //frontend will batch deploys that can fit in on contract
    //non-state should be stored on-chain
    //how do we store these vectors? just leave empty slots?, have tooling deal with that.
    //vectors are different, valued vectors line up differently than state vector.
    //empty valued vectors and then a translator to state vector
    // state vector  and constructor param vector
    function newEcosystem(uint256 _id,bytes[] calldata params) external {
        //check active ecosystem and non-null
        //retrieve version pointer
        //store parameters ( check types )
        //lock this ecosystem until upgraded or cancelled with new parameters
        //execute deployments if first array
    }
    function parameterChange() external{
        //should take in a state & non-state vector
    }
    function cancelParameterChange() external{
        // when changing an ecosystem
    }
    function upgradeEcosystem() external {
        //responsible going from current ecosystem to an upgraded version, consistently 
    }
    function deployFacets(bytes[] calldata  ) external 
  


    function 
    /**
     * Such large transaction sizes, need to break up. 
     * Given a version and state vector and constructor params
     * How do we deal with constructor params non-state? 
     * The issue
     * If param is invariant via all deployments, then it's not a problem.
     * If param varies across deployments, it is a problem. 
     */
    function changeStateVector(bytes32[] calldata stateVector, FacetDeploy[] calldata facets)
    
    function freezableInit() external {
        //should set merkle root for configurations
        //should set initial state
    }
    function upgradeFreezable() external {

    }
    function getFreezables() external view {
        // Needs to access the function selectors from storage. 
        // Need to decide on type of contract at this point
        // Static vs Diamond 
        // Static implies a static registry, which might not be ideal
        // Static registry implies static typing 
        // Dynamic typing enabled through diamonds 
        // Dynamic 
       
    }

}


// fetch the address to the generated version contract 