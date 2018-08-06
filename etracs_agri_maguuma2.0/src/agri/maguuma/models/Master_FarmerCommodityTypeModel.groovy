
import com.rameses.rcp.annotations.*;
import com.rameses.rcp.common.*;
import com.rameses.seti2.models.*;
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*;
import com.rameses.util.*;

class FarmerCommodityTypeModel extends CrudFormModel{
    
    def getLookupCommodity(){
            return Inv.lookupOpener('master_commodity:lookup',[
               onselect :{
                   entity.commodity_objid = it.objid;
                   entity.commodity_name = it.name;
                   binding.refresh(); 
               },
           ])
        }


   
}