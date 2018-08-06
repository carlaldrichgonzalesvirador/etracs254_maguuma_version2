import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.annotations.Env
import com.rameses.common.*;
import com.rameses.seti2.models.*;
import com.rameses.util.*;
        
class  FarmerPersonalInfoController extends CrudFormModel{
    @Binding
    def binding;
    
    @Service('DateService')
    def dtSvc
    
    @Env
    def env
    
    @Service("PersistenceService")
    def persistenceSvc;
    
    @Caller
    def maincontroller
    
    def parententity
    def svc
    
    String title = "Personal Information";
        
    boolean isCreateAllowed(){
        return false
    }
    
    boolean isViewReportAllowed(){
        return false
    }

    boolean isPrintReportAllowed(){
        return false
    }
    
    boolean isShowNavigation(){
        return false
    }
    public void beforeOpen() {
        entity.putAll(parententity)
    }
        
    public void afterOpen(){
       loadpersonalinfo()
    }
    public void beforeSave(o){
         if (o == 'create'){
            entity.objid = entity.detainee.objid
            entity.dno = svc.getDetaineeNo();
        }
    }
    public void afterCreate(){
        entity.putAll(parententity)
    }
    public void afterSave(){
        entity.detainee._schemaname = 'entityindividual'
        persistenceSvc.update(entity.detainee)
        maincontroller.reloadSections('open');
    }
    
    def loadpersonalinfo(){
        entity = persistenceSvc.read([ _schemaname: 'agri_pagrifarmer', objid: entity.objid])
        entity.detainee.putAll(persistenceSvc.read([ _schemaname: 'entityindividual', objid: entity.objid])) 
    }

}