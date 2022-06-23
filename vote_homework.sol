pragma solidity ^0.8.0;

contract Proportional_Representation{   //比例代表制で各政党の得票を得るコントラクト
    mapping(address=> bool) public have_voted;
    string[3] A_candidate; //A党の比例代表名簿
    string[3] B_candidate; //B党の比例代表名簿
    string[3] C_candidate; //C党の比例代表名簿

    uint A_vote=0;
    uint B_vote=0;
    uint C_vote=0;

    uint A_elected=0;
    uint B_elected=0;
    uint C_elected=0;
    
   /*constructor () public{
       A_candidate[0]="Aaron";
       A_candidate[1]="Abel";
       A_candidate[2]="Abraham";
       B_candidate[0]="Baldwin";
       B_candidate[1]="Barnaby";
       B_candidate[2]="Barney";
       C_candidate[0]="Calvin";
       C_candidate[1]="Cameron";
       C_candidate[2]="Carey";
   }*/

    function vote(uint _vote) public{
        require(have_voted[msg.sender]==false);
        if(_vote==0){
            A_vote+=1;
        }else if(_vote==1){
            B_vote+=1;
        }else if(_vote==2){
            C_vote+=1;
        }else{
            //0,1,2でない場合は無効票
        }
    }

    function get_result() public view returns(uint,uint,uint){
        return (A_vote, B_vote, C_vote);
    }

    /*//各政党の当選者数を返す
    function get_number_of_electors() public view returns(uint,uint,uint){
        uint[3] memory number;
        string[3] memory party;
        number[0]=A_vote;
        number[0]=B_vote;
        number[0]=C_vote;
        party[0]="A";
        party[1]="B";
        party[2]="C";
        for(uint i=0;i<3;i++){
            if(number[i]<number[i+1]){
                uint temp1=number[i];
                number[i]=number[i+1];
                number[i+1]=temp1;
                string memory temp2=party[i];
                party[i]=party[i+1];
                party[i+1]=temp2;
            }
        }
        for(uint i=0;i<3;i++){
            if(keccak256(party[0])==keccak256("A")){

            }
        }
    }*/

}