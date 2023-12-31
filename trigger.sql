create or replace function log_users_update() returns trigger as $$ 
declare
    tablename text;
    row_id integer;
    operation text;
    modified_by integer;
    
    log_values jsonb := '[]';
    log_value jsonb := '{}';
    
    is_changed boolean := false;
begin
    tablename := 'users';
    row_id := OLD.id::integer;
    modified_by := current_setting('public.user_id')::INTEGER;
    operation := 'update'::text;
    
    
    if (new.reset_password_expires <> old.reset_password_expires) then
        log_value := log_value || jsonb_build_object('field','reset_password_expires');
        log_value := log_value || jsonb_build_object('old',OLD.reset_password_expires);
        log_value := log_value || jsonb_build_object('new',NEW.reset_password_expires);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.entity_id <> old.entity_id) then
        log_value := log_value || jsonb_build_object('field','entity_id');
        log_value := log_value || jsonb_build_object('old',OLD.entity_id);
        log_value := log_value || jsonb_build_object('new',NEW.entity_id);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.reset_password_token <> old.reset_password_token) then
        log_value := log_value || jsonb_build_object('field','reset_password_token');
        log_value := log_value || jsonb_build_object('old',OLD.reset_password_token);
        log_value := log_value || jsonb_build_object('new',NEW.reset_password_token);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.first_name <> old.first_name) then
        log_value := log_value || jsonb_build_object('field','first_name');
        log_value := log_value || jsonb_build_object('old',OLD.first_name);
        log_value := log_value || jsonb_build_object('new',NEW.first_name);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.last_name <> old.last_name) then
        log_value := log_value || jsonb_build_object('field','last_name');
        log_value := log_value || jsonb_build_object('old',OLD.last_name);
        log_value := log_value || jsonb_build_object('new',NEW.last_name);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.email <> old.email) then
        log_value := log_value || jsonb_build_object('field','email');
        log_value := log_value || jsonb_build_object('old',OLD.email);
        log_value := log_value || jsonb_build_object('new',NEW.email);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.role <> old.role) then
        log_value := log_value || jsonb_build_object('field','role');
        log_value := log_value || jsonb_build_object('old',OLD.role);
        log_value := log_value || jsonb_build_object('new',NEW.role);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.password <> old.password) then
        log_value := log_value || jsonb_build_object('field','password');
        log_value := log_value || jsonb_build_object('old',OLD.password);
        log_value := log_value || jsonb_build_object('new',NEW.password);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.status <> old.status) then
        log_value := log_value || jsonb_build_object('field','status');
        log_value := log_value || jsonb_build_object('old',OLD.status);
        log_value := log_value || jsonb_build_object('new',NEW.status);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;
        
    if is_changed then
        call log(tablename,row_id,log_values,operation,modified_by);
        NEW.last_modified_by := modified_by;
        NEW.last_modified_on := now();
    end if;
    return NEW;
end;
$$ language plpgsql;

create or replace trigger update_users_trigger before update on users for each row when (OLD.last_modified_on = NEW.last_modified_on) execute function log_users_update();

create or replace function log_entity_update() returns trigger as $$ 
declare
    tablename text;
    row_id integer;
    operation text;
    modified_by integer;
    
    log_values jsonb := '[]';
    log_value jsonb := '{}';
    
    is_changed boolean := false;
begin
    tablename := 'entity';
    row_id := OLD.id::integer;
    modified_by := current_setting('public.user_id')::INTEGER;
    operation := 'update'::text;
    
    
    if (new.contact_details <> old.contact_details) then
        log_value := log_value || jsonb_build_object('field','contact_details');
        log_value := log_value || jsonb_build_object('old',OLD.contact_details);
        log_value := log_value || jsonb_build_object('new',NEW.contact_details);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.pincode <> old.pincode) then
        log_value := log_value || jsonb_build_object('field','pincode');
        log_value := log_value || jsonb_build_object('old',OLD.pincode);
        log_value := log_value || jsonb_build_object('new',NEW.pincode);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.image_data <> old.image_data) then
        log_value := log_value || jsonb_build_object('field','image_data');
        log_value := log_value || jsonb_build_object('old',OLD.image_data);
        log_value := log_value || jsonb_build_object('new',NEW.image_data);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.name <> old.name) then
        log_value := log_value || jsonb_build_object('field','name');
        log_value := log_value || jsonb_build_object('old',OLD.name);
        log_value := log_value || jsonb_build_object('new',NEW.name);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.logo_url <> old.logo_url) then
        log_value := log_value || jsonb_build_object('field','logo_url');
        log_value := log_value || jsonb_build_object('old',OLD.logo_url);
        log_value := log_value || jsonb_build_object('new',NEW.logo_url);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.email <> old.email) then
        log_value := log_value || jsonb_build_object('field','email');
        log_value := log_value || jsonb_build_object('old',OLD.email);
        log_value := log_value || jsonb_build_object('new',NEW.email);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.country <> old.country) then
        log_value := log_value || jsonb_build_object('field','country');
        log_value := log_value || jsonb_build_object('old',OLD.country);
        log_value := log_value || jsonb_build_object('new',NEW.country);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.state <> old.state) then
        log_value := log_value || jsonb_build_object('field','state');
        log_value := log_value || jsonb_build_object('old',OLD.state);
        log_value := log_value || jsonb_build_object('new',NEW.state);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.city <> old.city) then
        log_value := log_value || jsonb_build_object('field','city');
        log_value := log_value || jsonb_build_object('old',OLD.city);
        log_value := log_value || jsonb_build_object('new',NEW.city);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.address <> old.address) then
        log_value := log_value || jsonb_build_object('field','address');
        log_value := log_value || jsonb_build_object('old',OLD.address);
        log_value := log_value || jsonb_build_object('new',NEW.address);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.tax_id <> old.tax_id) then
        log_value := log_value || jsonb_build_object('field','tax_id');
        log_value := log_value || jsonb_build_object('old',OLD.tax_id);
        log_value := log_value || jsonb_build_object('new',NEW.tax_id);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.status <> old.status) then
        log_value := log_value || jsonb_build_object('field','status');
        log_value := log_value || jsonb_build_object('old',OLD.status);
        log_value := log_value || jsonb_build_object('new',NEW.status);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.currency <> old.currency) then
        log_value := log_value || jsonb_build_object('field','currency');
        log_value := log_value || jsonb_build_object('old',OLD.currency);
        log_value := log_value || jsonb_build_object('new',NEW.currency);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.bank_details <> old.bank_details) then
        log_value := log_value || jsonb_build_object('field','bank_details');
        log_value := log_value || jsonb_build_object('old',OLD.bank_details);
        log_value := log_value || jsonb_build_object('new',NEW.bank_details);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;
        
    if is_changed then
        call log(tablename,row_id,log_values,operation,modified_by);
        NEW.last_modified_by := modified_by;
        NEW.last_modified_on := now();
    end if;
    return NEW;
end;
$$ language plpgsql;

create or replace trigger update_entity_trigger before update on entity for each row when (OLD.last_modified_on = NEW.last_modified_on) execute function log_entity_update();

create or replace function log_customer_update() returns trigger as $$ 
declare
    tablename text;
    row_id integer;
    operation text;
    modified_by integer;
    
    log_values jsonb := '[]';
    log_value jsonb := '{}';
    
    is_changed boolean := false;
begin
    tablename := 'customer';
    row_id := OLD.id::integer;
    modified_by := current_setting('public.user_id')::INTEGER;
    operation := 'update'::text;
    
    
    if (new.contact_details <> old.contact_details) then
        log_value := log_value || jsonb_build_object('field','contact_details');
        log_value := log_value || jsonb_build_object('old',OLD.contact_details);
        log_value := log_value || jsonb_build_object('new',NEW.contact_details);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.pincode <> old.pincode) then
        log_value := log_value || jsonb_build_object('field','pincode');
        log_value := log_value || jsonb_build_object('old',OLD.pincode);
        log_value := log_value || jsonb_build_object('new',NEW.pincode);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.image_data <> old.image_data) then
        log_value := log_value || jsonb_build_object('field','image_data');
        log_value := log_value || jsonb_build_object('old',OLD.image_data);
        log_value := log_value || jsonb_build_object('new',NEW.image_data);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.name <> old.name) then
        log_value := log_value || jsonb_build_object('field','name');
        log_value := log_value || jsonb_build_object('old',OLD.name);
        log_value := log_value || jsonb_build_object('new',NEW.name);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.email <> old.email) then
        log_value := log_value || jsonb_build_object('field','email');
        log_value := log_value || jsonb_build_object('old',OLD.email);
        log_value := log_value || jsonb_build_object('new',NEW.email);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.status <> old.status) then
        log_value := log_value || jsonb_build_object('field','status');
        log_value := log_value || jsonb_build_object('old',OLD.status);
        log_value := log_value || jsonb_build_object('new',NEW.status);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.country <> old.country) then
        log_value := log_value || jsonb_build_object('field','country');
        log_value := log_value || jsonb_build_object('old',OLD.country);
        log_value := log_value || jsonb_build_object('new',NEW.country);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.state <> old.state) then
        log_value := log_value || jsonb_build_object('field','state');
        log_value := log_value || jsonb_build_object('old',OLD.state);
        log_value := log_value || jsonb_build_object('new',NEW.state);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.city <> old.city) then
        log_value := log_value || jsonb_build_object('field','city');
        log_value := log_value || jsonb_build_object('old',OLD.city);
        log_value := log_value || jsonb_build_object('new',NEW.city);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.address <> old.address) then
        log_value := log_value || jsonb_build_object('field','address');
        log_value := log_value || jsonb_build_object('old',OLD.address);
        log_value := log_value || jsonb_build_object('new',NEW.address);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.currency <> old.currency) then
        log_value := log_value || jsonb_build_object('field','currency');
        log_value := log_value || jsonb_build_object('old',OLD.currency);
        log_value := log_value || jsonb_build_object('new',NEW.currency);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.website_url <> old.website_url) then
        log_value := log_value || jsonb_build_object('field','website_url');
        log_value := log_value || jsonb_build_object('old',OLD.website_url);
        log_value := log_value || jsonb_build_object('new',NEW.website_url);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.logo_url <> old.logo_url) then
        log_value := log_value || jsonb_build_object('field','logo_url');
        log_value := log_value || jsonb_build_object('old',OLD.logo_url);
        log_value := log_value || jsonb_build_object('new',NEW.logo_url);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.bank_details <> old.bank_details) then
        log_value := log_value || jsonb_build_object('field','bank_details');
        log_value := log_value || jsonb_build_object('old',OLD.bank_details);
        log_value := log_value || jsonb_build_object('new',NEW.bank_details);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;
        
    if is_changed then
        call log(tablename,row_id,log_values,operation,modified_by);
        NEW.last_modified_by := modified_by;
        NEW.last_modified_on := now();
    end if;
    return NEW;
end;
$$ language plpgsql;

create or replace trigger update_customer_trigger before update on customer for each row when (OLD.last_modified_on = NEW.last_modified_on) execute function log_customer_update();

create or replace function log_project_update() returns trigger as $$ 
declare
    tablename text;
    row_id integer;
    operation text;
    modified_by integer;
    
    log_values jsonb := '[]';
    log_value jsonb := '{}';
    
    is_changed boolean := false;
begin
    tablename := 'project';
    row_id := OLD.id::integer;
    modified_by := current_setting('public.user_id')::INTEGER;
    operation := 'update'::text;
    
    
    if (new.customer_id <> old.customer_id) then
        log_value := log_value || jsonb_build_object('field','customer_id');
        log_value := log_value || jsonb_build_object('old',OLD.customer_id);
        log_value := log_value || jsonb_build_object('new',NEW.customer_id);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.start_date <> old.start_date) then
        log_value := log_value || jsonb_build_object('field','start_date');
        log_value := log_value || jsonb_build_object('old',OLD.start_date);
        log_value := log_value || jsonb_build_object('new',NEW.start_date);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.end_date <> old.end_date) then
        log_value := log_value || jsonb_build_object('field','end_date');
        log_value := log_value || jsonb_build_object('old',OLD.end_date);
        log_value := log_value || jsonb_build_object('new',NEW.end_date);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.entity_id <> old.entity_id) then
        log_value := log_value || jsonb_build_object('field','entity_id');
        log_value := log_value || jsonb_build_object('old',OLD.entity_id);
        log_value := log_value || jsonb_build_object('new',NEW.entity_id);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.name <> old.name) then
        log_value := log_value || jsonb_build_object('field','name');
        log_value := log_value || jsonb_build_object('old',OLD.name);
        log_value := log_value || jsonb_build_object('new',NEW.name);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.billing_type <> old.billing_type) then
        log_value := log_value || jsonb_build_object('field','billing_type');
        log_value := log_value || jsonb_build_object('old',OLD.billing_type);
        log_value := log_value || jsonb_build_object('new',NEW.billing_type);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.billing_period <> old.billing_period) then
        log_value := log_value || jsonb_build_object('field','billing_period');
        log_value := log_value || jsonb_build_object('old',OLD.billing_period);
        log_value := log_value || jsonb_build_object('new',NEW.billing_period);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.status <> old.status) then
        log_value := log_value || jsonb_build_object('field','status');
        log_value := log_value || jsonb_build_object('old',OLD.status);
        log_value := log_value || jsonb_build_object('new',NEW.status);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;
        
    if is_changed then
        call log(tablename,row_id,log_values,operation,modified_by);
        NEW.last_modified_by := modified_by;
        NEW.last_modified_on := now();
    end if;
    return NEW;
end;
$$ language plpgsql;

create or replace trigger update_project_trigger before update on project for each row when (OLD.last_modified_on = NEW.last_modified_on) execute function log_project_update();

create or replace function log_project_resource_update() returns trigger as $$ 
declare
    tablename text;
    row_id integer;
    operation text;
    modified_by integer;
    
    log_values jsonb := '[]';
    log_value jsonb := '{}';
    
    is_changed boolean := false;
begin
    tablename := 'project_resource';
    row_id := OLD.id::integer;
    modified_by := current_setting('public.user_id')::INTEGER;
    operation := 'update'::text;
    
    
    if (new.project_id <> old.project_id) then
        log_value := log_value || jsonb_build_object('field','project_id');
        log_value := log_value || jsonb_build_object('old',OLD.project_id);
        log_value := log_value || jsonb_build_object('new',NEW.project_id);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.service_id <> old.service_id) then
        log_value := log_value || jsonb_build_object('field','service_id');
        log_value := log_value || jsonb_build_object('old',OLD.service_id);
        log_value := log_value || jsonb_build_object('new',NEW.service_id);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.daily_hours <> old.daily_hours) then
        log_value := log_value || jsonb_build_object('field','daily_hours');
        log_value := log_value || jsonb_build_object('old',OLD.daily_hours);
        log_value := log_value || jsonb_build_object('new',NEW.daily_hours);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.hourly_rate <> old.hourly_rate) then
        log_value := log_value || jsonb_build_object('field','hourly_rate');
        log_value := log_value || jsonb_build_object('old',OLD.hourly_rate);
        log_value := log_value || jsonb_build_object('new',NEW.hourly_rate);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.start_date <> old.start_date) then
        log_value := log_value || jsonb_build_object('field','start_date');
        log_value := log_value || jsonb_build_object('old',OLD.start_date);
        log_value := log_value || jsonb_build_object('new',NEW.start_date);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.end_date <> old.end_date) then
        log_value := log_value || jsonb_build_object('field','end_date');
        log_value := log_value || jsonb_build_object('old',OLD.end_date);
        log_value := log_value || jsonb_build_object('new',NEW.end_date);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.resource_id <> old.resource_id) then
        log_value := log_value || jsonb_build_object('field','resource_id');
        log_value := log_value || jsonb_build_object('old',OLD.resource_id);
        log_value := log_value || jsonb_build_object('new',NEW.resource_id);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;
        
    if is_changed then
        call log(tablename,row_id,log_values,operation,modified_by);
        NEW.last_modified_by := modified_by;
        NEW.last_modified_on := now();
    end if;
    return NEW;
end;
$$ language plpgsql;

create or replace trigger update_project_resource_trigger before update on project_resource for each row when (OLD.last_modified_on = NEW.last_modified_on) execute function log_project_resource_update();

create or replace function log_invoice_update() returns trigger as $$ 
declare
    tablename text;
    row_id integer;
    operation text;
    modified_by integer;
    
    log_values jsonb := '[]';
    log_value jsonb := '{}';
    
    is_changed boolean := false;
begin
    tablename := 'invoice';
    row_id := OLD.id::integer;
    modified_by := current_setting('public.user_id')::INTEGER;
    operation := 'update'::text;
    
    
    if (new.entity_id <> old.entity_id) then
        log_value := log_value || jsonb_build_object('field','entity_id');
        log_value := log_value || jsonb_build_object('old',OLD.entity_id);
        log_value := log_value || jsonb_build_object('new',NEW.entity_id);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.customer_id <> old.customer_id) then
        log_value := log_value || jsonb_build_object('field','customer_id');
        log_value := log_value || jsonb_build_object('old',OLD.customer_id);
        log_value := log_value || jsonb_build_object('new',NEW.customer_id);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.project_id <> old.project_id) then
        log_value := log_value || jsonb_build_object('field','project_id');
        log_value := log_value || jsonb_build_object('old',OLD.project_id);
        log_value := log_value || jsonb_build_object('new',NEW.project_id);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.issue_date <> old.issue_date) then
        log_value := log_value || jsonb_build_object('field','issue_date');
        log_value := log_value || jsonb_build_object('old',OLD.issue_date);
        log_value := log_value || jsonb_build_object('new',NEW.issue_date);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.due_date <> old.due_date) then
        log_value := log_value || jsonb_build_object('field','due_date');
        log_value := log_value || jsonb_build_object('old',OLD.due_date);
        log_value := log_value || jsonb_build_object('new',NEW.due_date);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.duration_start <> old.duration_start) then
        log_value := log_value || jsonb_build_object('field','duration_start');
        log_value := log_value || jsonb_build_object('old',OLD.duration_start);
        log_value := log_value || jsonb_build_object('new',NEW.duration_start);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.duration_end <> old.duration_end) then
        log_value := log_value || jsonb_build_object('field','duration_end');
        log_value := log_value || jsonb_build_object('old',OLD.duration_end);
        log_value := log_value || jsonb_build_object('new',NEW.duration_end);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.total_cost <> old.total_cost) then
        log_value := log_value || jsonb_build_object('field','total_cost');
        log_value := log_value || jsonb_build_object('old',OLD.total_cost);
        log_value := log_value || jsonb_build_object('new',NEW.total_cost);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.feedback <> old.feedback) then
        log_value := log_value || jsonb_build_object('field','feedback');
        log_value := log_value || jsonb_build_object('old',OLD.feedback);
        log_value := log_value || jsonb_build_object('new',NEW.feedback);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.status <> old.status) then
        log_value := log_value || jsonb_build_object('field','status');
        log_value := log_value || jsonb_build_object('old',OLD.status);
        log_value := log_value || jsonb_build_object('new',NEW.status);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.invoice_pdf_path <> old.invoice_pdf_path) then
        log_value := log_value || jsonb_build_object('field','invoice_pdf_path');
        log_value := log_value || jsonb_build_object('old',OLD.invoice_pdf_path);
        log_value := log_value || jsonb_build_object('new',NEW.invoice_pdf_path);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;
        
    if is_changed then
        call log(tablename,row_id,log_values,operation,modified_by);
        NEW.last_modified_by := modified_by;
        NEW.last_modified_on := now();
    end if;
    return NEW;
end;
$$ language plpgsql;

create or replace trigger update_invoice_trigger before update on invoice for each row when (OLD.last_modified_on = NEW.last_modified_on) execute function log_invoice_update();

create or replace function log_invoice_items_update() returns trigger as $$ 
declare
    tablename text;
    row_id integer;
    operation text;
    modified_by integer;
    
    log_values jsonb := '[]';
    log_value jsonb := '{}';
    
    is_changed boolean := false;
begin
    tablename := 'invoice_items';
    row_id := OLD.id::integer;
    modified_by := current_setting('public.user_id')::INTEGER;
    operation := 'update'::text;
    
    
    if (new.tax <> old.tax) then
        log_value := log_value || jsonb_build_object('field','tax');
        log_value := log_value || jsonb_build_object('old',OLD.tax);
        log_value := log_value || jsonb_build_object('new',NEW.tax);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.invoice_id <> old.invoice_id) then
        log_value := log_value || jsonb_build_object('field','invoice_id');
        log_value := log_value || jsonb_build_object('old',OLD.invoice_id);
        log_value := log_value || jsonb_build_object('new',NEW.invoice_id);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.invoice_line_items <> old.invoice_line_items) then
        log_value := log_value || jsonb_build_object('field','invoice_line_items');
        log_value := log_value || jsonb_build_object('old',OLD.invoice_line_items);
        log_value := log_value || jsonb_build_object('new',NEW.invoice_line_items);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;
        
    if is_changed then
        call log(tablename,row_id,log_values,operation,modified_by);
        NEW.last_modified_by := modified_by;
        NEW.last_modified_on := now();
    end if;
    return NEW;
end;
$$ language plpgsql;

create or replace trigger update_invoice_items_trigger before update on invoice_items for each row when (OLD.last_modified_on = NEW.last_modified_on) execute function log_invoice_items_update();

create or replace function log_service_update() returns trigger as $$ 
declare
    tablename text;
    row_id integer;
    operation text;
    modified_by integer;
    
    log_values jsonb := '[]';
    log_value jsonb := '{}';
    
    is_changed boolean := false;
begin
    tablename := 'service';
    row_id := OLD.id::integer;
    modified_by := current_setting('public.user_id')::INTEGER;
    operation := 'update'::text;
    
    
    if (new.name <> old.name) then
        log_value := log_value || jsonb_build_object('field','name');
        log_value := log_value || jsonb_build_object('old',OLD.name);
        log_value := log_value || jsonb_build_object('new',NEW.name);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.status <> old.status) then
        log_value := log_value || jsonb_build_object('field','status');
        log_value := log_value || jsonb_build_object('old',OLD.status);
        log_value := log_value || jsonb_build_object('new',NEW.status);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;
        
    if is_changed then
        call log(tablename,row_id,log_values,operation,modified_by);
        NEW.last_modified_by := modified_by;
        NEW.last_modified_on := now();
    end if;
    return NEW;
end;
$$ language plpgsql;

create or replace trigger update_service_trigger before update on service for each row when (OLD.last_modified_on = NEW.last_modified_on) execute function log_service_update();

create or replace function log_template_update() returns trigger as $$ 
declare
    tablename text;
    row_id integer;
    operation text;
    modified_by integer;
    
    log_values jsonb := '[]';
    log_value jsonb := '{}';
    
    is_changed boolean := false;
begin
    tablename := 'template';
    row_id := OLD.id::integer;
    modified_by := current_setting('public.user_id')::INTEGER;
    operation := 'update'::text;
    
    
    if (new.template_data <> old.template_data) then
        log_value := log_value || jsonb_build_object('field','template_data');
        log_value := log_value || jsonb_build_object('old',OLD.template_data);
        log_value := log_value || jsonb_build_object('new',NEW.template_data);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;

    if (new.customer_id <> old.customer_id) then
        log_value := log_value || jsonb_build_object('field','customer_id');
        log_value := log_value || jsonb_build_object('old',OLD.customer_id);
        log_value := log_value || jsonb_build_object('new',NEW.customer_id);
        
        log_values := jsonb_set(log_values,'{-1}',log_value,true);
        is_changed := true;
    end if;
        
    if is_changed then
        call log(tablename,row_id,log_values,operation,modified_by);
        NEW.last_modified_by := modified_by;
        NEW.last_modified_on := now();
    end if;
    return NEW;
end;
$$ language plpgsql;

create or replace trigger update_template_trigger before update on template for each row when (OLD.last_modified_on = NEW.last_modified_on) execute function log_template_update();

