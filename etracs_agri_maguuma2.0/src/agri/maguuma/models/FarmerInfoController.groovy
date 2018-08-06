import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*
import com.rameses.annotations.Env
import com.rameses.common.*;
import com.rameses.seti2.models.*;
import com.rameses.util.*;

class FarmerInfoController{
    @Binding
    def binding;
    
    @Service("FarmerService")
    def svc;

    @Service("PersistenceService")
    def persistenceSvc;
 
    @FormTitle
    def title

    def sections;
    def currentSection;
    def entity;

    public void create(){
        title = "New Farmer";
        entity = svc.initCreate();
        loadSections('create');
    }
    
    public void open(){
        title = entity.dno + " - " + entity.farmer.name
        loadSections('open');
    }
    
    void reloadSections(action) {
//        binding.refresh("subform");
        def handlers = Inv.lookupOpeners("agri_pagrifarmers:section:"+action,[parententity:entity,svc:svc]);
        def selitemid = currentSection?.id; 
        sections.clear();
        sections.addAll( 
            handlers.findAll {
                def vw = it.properties.visibleWhen;
                return  ((!vw)  ||  ExpressionResolver.getInstance().evalBoolean( vw, [parententity:entity,svc:svc] ));     
            }
        ); 

        currentSection = sections.find{ it.id == selitemid } 
        if ( sections && currentSection==null ) {
            currentSection = sections.first(); 
        }
        binding.refresh();
    }

    void loadSections(action) {
        sections = InvokerUtil.lookupOpeners( "agri_pagrifarmer:section:"+action,[parententity:entity,svc:svc]).findAll {
            def vw = it.properties.visibleWhen;
            return  ((!vw)  ||  ExpressionResolver.getInstance().evalBoolean( vw, [parententity:entity,svc:svc] ));
        }
        if( sections.size()>0 ) {
            currentSection = sections[0];
        }  
    }
    
    void reloadCurrentSection() {
        MsgBox.alert( currentSection.name );
    }

}