# frozen_string_literal: true

FactoryBot.define do
  factory :contact do
    # initialize_with { Contact.find_or_create_by(lead_source: lead_source) }

    # Default column values
    # TODO: this needs to take into consideration the required flag
    #       default columns should be nil, unless they are required and in that scenario
    #       the value can be uncommented
    # TODO: This needs work from the data dictionary and use the faker gem
    # TODO: This needs to put created_at, updated_at and deleted_at in own traits
    printsmith_id                            { nil } # { 9999 }
    first_name                               { nil } # { "First Name" }
    last_name                                { nil } # { "Last Name" }
    email                                    { nil } # { "Email" }
    phone                                    { nil } # { "Phone" }
    dirty                                    { nil } # { true }
    gender                                   { nil } # { "Gender" }
    temp                                     { nil } # { true }
    source_address_id                        { nil } # { 9999 }
    deleted                                  { nil } # { true }
    ready                                    { nil } # { true }
    associations_complete                    { nil } # { true }
    assocation_checks                        { nil } # { 9999 }
    source_account_id                        { nil } # { 9999 }
    remote_update_required                   { nil } # { true }
    in_group                                 { nil } # { true }
    parent_contact_id                        { nil } # { 9999 }
    mobile                                   { nil } # { "Mobile" }
    fax                                      { nil } # { "Fax" }
    home_phone                               { nil } # { "Home Phone" }
    twitter                                  { nil } # { "Twitter" }
    other                                    { nil } # { "Other" }
    facebook                                 { nil } # { "Facebook" }
    website                                  { nil } # { "Website" }
    buy_frequency                            { nil } # { 9.9 }
    days_outside_buy_freq                    { nil } # { 9999 }
    marketing_do_not_mail                    { nil } # { true }
    marketing_unsubscribe                    { nil } # { true }
    source_created_at                        { nil } # { Date.parse "09 Jan 2017" }
    source_updated_at                        { nil } # { Date.parse "09 Jan 2017" }
    source_salesrep_id                       { nil } # { 9999 }
    sales_rep_user_id                        { nil } # { 9999 }
    location_user_id                         { nil } # { 9999 }
    rolling_12_month_sales                   { nil } # { 9.9 }
    rolling_12_month_sales_ly                { nil } # { 9.9 }
    latest_order_date                        { nil } # { Date.parse "09 Jan 2017" }
    rolling_12_month_cogs                    { nil } # { 9.9 }
    marketing_unsubscribe_reason             { nil } # { "Marketing Unsubscribe Reason" }
    on_suppression_list                      { nil } # { true }
    growth_percentage                        { nil } # { 9.9 }
    rolling_1_month_sales                    { nil } # { 9.9 }
    order_count                              { nil } # { 9999 }
    average_invoice                          { nil } # { 9.9 }
    has_clearbit_data                        { nil } # { true }
    clearbit_data                            { nil } # { { a: "clearbit_data" } }
    custom_data                              { nil } # { { a: "custom_data" } }
    last_clearbit_data_fetch_date            { nil } # { Date.parse "09 Jan 2017" }
    last_viewed                              { nil } # { Date.parse "09 Jan 2017" }
    guessed_gender                           { nil } # { "Guessed Gender" }
    guessed_gender_confidence                { nil } # { 9.9 }
    bounced_email_addresses                  { nil } # { "Bounced Email Addresses" }
    last_contact                             { nil } # { Date.parse "09 Jan 2017" }
    last_email_sent                          { nil } # { Date.parse "09 Jan 2017" }
    last_email_received                      { nil } # { Date.parse "09 Jan 2017" }
    last_phone_call                          { nil } # { Date.parse "09 Jan 2017" }
    rolling_12_month_sales_ly_ly             { nil } # { 9.9 }
    remote_sales_rep_update                  { nil } # { true }
    last_pickup_date                         { nil } # { Date.parse "09 Jan 2017" }
    lead_source                              { nil } # { "Lead Source" }
    lead_source_2                            { nil } # { "Lead Source 2" }
    prefix                                   { nil } # { "Prefix" }
    suffix                                   { nil } # { "Suffix" }
    needs_email_remap                        { nil } # { true }
    job_title                                { nil } # { "Job Title" }
    est_spend                                { nil } # { 9999 }
    conv_prob                                { nil } # { 9999 }
    next_activity_date                       { nil } # { Date.parse "09 Jan 2017" }
    next_activity_type                       { nil } # { "Next Activity Type" }
    use_contact_address                      { nil } # { true }
    needs_email_validation                   { nil } # { true }
    source_inquiry_id                        { nil } # { 9999 }
    email_validation_attempts                { nil } # { 9999 }
    next_activity                            { nil } # { { a: "next_activity" } }
    oldest_rolling_12_invoice                { nil } # { Date.parse "09 Jan 2017" }
    oldest_rolling_12_ly_invoice             { nil } # { Date.parse "09 Jan 2017" }
    oldest_rolling_12_ly_ly_invoice          { nil } # { Date.parse "09 Jan 2017" }
    oldest_rolling_1_invoice                 { nil } # { Date.parse "09 Jan 2017" }
    unsubscribed                             { nil } # { true }
    last_meeting                             { nil } # { Date.parse "09 Jan 2017" }
    old_prospect_status_id                   { nil } # { 9999 }
    platform_id                              { nil } # { "Platform" }
    platform_data                            { nil } # { { a: "platform_data" } }
    lead_created_at                          { nil } # { Date.parse "09 Jan 2017" }
    external_id                              { nil } # { "External" }
    single_sale_only_at                      { nil } # { Date.parse "09 Jan 2017" }
    first_sale_at                            { nil } # { Date.parse "09 Jan 2017" }
    sales_rep_platform_id                    { nil } # { "Sales Rep Platform" }
    tmp_data                                 { nil } # { { a: "tmp_data" } }

    trait :deleted do
      deleted                                { true }
    end

    trait :temp do
      temp                                   { true }
    end
    
    trait :trait1 do
      printsmith_id                          { 1111 }
      first_name                             { "A-First Name" }
      last_name                              { "A-Last Name" }
      email                                  { "A-Email" }
      phone                                  { "A-Phone" }
      dirty                                  { true }
      gender                                 { "A-Gender" }
      temp                                   { false }
      source_address_id                      { 1111 }
      deleted                                { false }
      ready                                  { true }
      associations_complete                  { true }
      assocation_checks                      { 1111 }
      source_account_id                      { 1111 }
      remote_update_required                 { true }
      in_group                               { true }
      parent_contact_id                      { 1111 }
      mobile                                 { "A-Mobile" }
      fax                                    { "A-Fax" }
      home_phone                             { "A-Home Phone" }
      twitter                                { "A-Twitter" }
      other                                  { "A-Other" }
      facebook                               { "A-Facebook" }
      website                                { "A-Website" }
      buy_frequency                          { 1.1 }
      days_outside_buy_freq                  { 1111 }
      marketing_do_not_mail                  { true }
      marketing_unsubscribe                  { true }
      source_created_at                      { Date.parse "01 Jan 2017" }
      source_updated_at                      { Date.parse "01 Jan 2017" }
      source_salesrep_id                     { 1111 }
      sales_rep_user_id                      { 1111 }
      location_user_id                       { 1111 }
      rolling_12_month_sales                 { 1.1 }
      rolling_12_month_sales_ly              { 1.1 }
      latest_order_date                      { Date.parse "01 Jan 2017" }
      rolling_12_month_cogs                  { 1.1 }
      marketing_unsubscribe_reason           { "A-Marketing Unsubscribe Reason" }
      on_suppression_list                    { true }
      growth_percentage                      { 1.1 }
      rolling_1_month_sales                  { 1.1 }
      order_count                            { 1111 }
      average_invoice                        { 1.1 }
      has_clearbit_data                      { true }
      clearbit_data                          { { a: "A-clearbit_data" } }
      custom_data                            { { a: "A-custom_data" } }
      last_clearbit_data_fetch_date          { Date.parse "01 Jan 2017" }
      last_viewed                            { Date.parse "01 Jan 2017" }
      guessed_gender                         { "A-Guessed Gender" }
      guessed_gender_confidence              { 1.1 }
      bounced_email_addresses                { "A-Bounced Email Addresses" }
      last_contact                           { Date.parse "01 Jan 2017" }
      last_email_sent                        { Date.parse "01 Jan 2017" }
      last_email_received                    { Date.parse "01 Jan 2017" }
      last_phone_call                        { Date.parse "01 Jan 2017" }
      rolling_12_month_sales_ly_ly           { 1.1 }
      remote_sales_rep_update                { true }
      last_pickup_date                       { Date.parse "01 Jan 2017" }
      lead_source                            { "A-Lead Source" }
      lead_source_2                          { "A-Lead Source 2" }
      prefix                                 { "A-Prefix" }
      suffix                                 { "A-Suffix" }
      needs_email_remap                      { true }
      job_title                              { "A-Job Title" }
      est_spend                              { 1111 }
      conv_prob                              { 1111 }
      next_activity_date                     { Date.parse "01 Jan 2017" }
      next_activity_type                     { "A-Next Activity Type" }
      use_contact_address                    { true }
      needs_email_validation                 { true }
      source_inquiry_id                      { 1111 }
      email_validation_attempts              { 1111 }
      next_activity                          { { a: "A-next_activity" } }
      oldest_rolling_12_invoice              { Date.parse "01 Jan 2017" }
      oldest_rolling_12_ly_invoice           { Date.parse "01 Jan 2017" }
      oldest_rolling_12_ly_ly_invoice        { Date.parse "01 Jan 2017" }
      oldest_rolling_1_invoice               { Date.parse "01 Jan 2017" }
      unsubscribed                           { true }
      last_meeting                           { Date.parse "01 Jan 2017" }
      old_prospect_status_id                 { 1111 }
      platform_id                            { "A-Platform" }
      platform_data                          { { a: "A-platform_data" } }
      lead_created_at                        { Date.parse "01 Jan 2017" }
      external_id                            { "A-External" }
      single_sale_only_at                    { Date.parse "01 Jan 2017" }
      first_sale_at                          { Date.parse "01 Jan 2017" }
      sales_rep_platform_id                  { "A-Sales Rep Platform" }
      tmp_data                               { { a: "A-tmp_data" } }
    end

    trait :trait2 do
      printsmith_id                          { 2222 }
      first_name                             { "B-First Name" }
      last_name                              { "B-Last Name" }
      email                                  { "B-Email" }
      phone                                  { "B-Phone" }
      dirty                                  { false }
      gender                                 { "B-Gender" }
      temp                                   { false }
      source_address_id                      { 2222 }
      deleted                                { false }
      ready                                  { false }
      associations_complete                  { false }
      assocation_checks                      { 2222 }
      source_account_id                      { 2222 }
      remote_update_required                 { false }
      in_group                               { false }
      parent_contact_id                      { 2222 }
      mobile                                 { "B-Mobile" }
      fax                                    { "B-Fax" }
      home_phone                             { "B-Home Phone" }
      twitter                                { "B-Twitter" }
      other                                  { "B-Other" }
      facebook                               { "B-Facebook" }
      website                                { "B-Website" }
      buy_frequency                          { 2.2 }
      days_outside_buy_freq                  { 2222 }
      marketing_do_not_mail                  { false }
      marketing_unsubscribe                  { false }
      source_created_at                      { Date.parse "02 Jan 2017" }
      source_updated_at                      { Date.parse "02 Jan 2017" }
      source_salesrep_id                     { 2222 }
      sales_rep_user_id                      { 2222 }
      location_user_id                       { 2222 }
      rolling_12_month_sales                 { 2.2 }
      rolling_12_month_sales_ly              { 2.2 }
      latest_order_date                      { Date.parse "02 Jan 2017" }
      rolling_12_month_cogs                  { 2.2 }
      marketing_unsubscribe_reason           { "B-Marketing Unsubscribe Reason" }
      on_suppression_list                    { false }
      growth_percentage                      { 2.2 }
      rolling_1_month_sales                  { 2.2 }
      order_count                            { 2222 }
      average_invoice                        { 2.2 }
      has_clearbit_data                      { false }
      clearbit_data                          { { a: "B-clearbit_data" } }
      custom_data                            { { a: "B-custom_data" } }
      last_clearbit_data_fetch_date          { Date.parse "02 Jan 2017" }
      last_viewed                            { Date.parse "02 Jan 2017" }
      guessed_gender                         { "B-Guessed Gender" }
      guessed_gender_confidence              { 2.2 }
      bounced_email_addresses                { "B-Bounced Email Addresses" }
      last_contact                           { Date.parse "02 Jan 2017" }
      last_email_sent                        { Date.parse "02 Jan 2017" }
      last_email_received                    { Date.parse "02 Jan 2017" }
      last_phone_call                        { Date.parse "02 Jan 2017" }
      rolling_12_month_sales_ly_ly           { 2.2 }
      remote_sales_rep_update                { false }
      last_pickup_date                       { Date.parse "02 Jan 2017" }
      lead_source                            { "B-Lead Source" }
      lead_source_2                          { "B-Lead Source 2" }
      prefix                                 { "B-Prefix" }
      suffix                                 { "B-Suffix" }
      needs_email_remap                      { false }
      job_title                              { "B-Job Title" }
      est_spend                              { 2222 }
      conv_prob                              { 2222 }
      next_activity_date                     { Date.parse "02 Jan 2017" }
      next_activity_type                     { "B-Next Activity Type" }
      use_contact_address                    { false }
      needs_email_validation                 { false }
      source_inquiry_id                      { 2222 }
      email_validation_attempts              { 2222 }
      next_activity                          { { a: "B-next_activity" } }
      oldest_rolling_12_invoice              { Date.parse "02 Jan 2017" }
      oldest_rolling_12_ly_invoice           { Date.parse "02 Jan 2017" }
      oldest_rolling_12_ly_ly_invoice        { Date.parse "02 Jan 2017" }
      oldest_rolling_1_invoice               { Date.parse "02 Jan 2017" }
      unsubscribed                           { false }
      last_meeting                           { Date.parse "02 Jan 2017" }
      old_prospect_status_id                 { 2222 }
      platform_id                            { "B-Platform" }
      platform_data                          { { a: "B-platform_data" } }
      lead_created_at                        { Date.parse "02 Jan 2017" }
      external_id                            { "B-External" }
      single_sale_only_at                    { Date.parse "02 Jan 2017" }
      first_sale_at                          { Date.parse "02 Jan 2017" }
      sales_rep_platform_id                  { "B-Sales Rep Platform" }
      tmp_data                               { { a: "B-tmp_data" } }
    end

    trait :trait3 do
      printsmith_id                          { 3333 }
      first_name                             { "C-First Name" }
      last_name                              { "C-Last Name" }
      email                                  { "C-Email" }
      phone                                  { "C-Phone" }
      dirty                                  { true }
      gender                                 { "C-Gender" }
      temp                                   { false }
      source_address_id                      { 3333 }
      deleted                                { false }
      ready                                  { true }
      associations_complete                  { true }
      assocation_checks                      { 3333 }
      source_account_id                      { 3333 }
      remote_update_required                 { true }
      in_group                               { true }
      parent_contact_id                      { 3333 }
      mobile                                 { "C-Mobile" }
      fax                                    { "C-Fax" }
      home_phone                             { "C-Home Phone" }
      twitter                                { "C-Twitter" }
      other                                  { "C-Other" }
      facebook                               { "C-Facebook" }
      website                                { "C-Website" }
      buy_frequency                          { 3.3 }
      days_outside_buy_freq                  { 3333 }
      marketing_do_not_mail                  { true }
      marketing_unsubscribe                  { true }
      source_created_at                      { Date.parse "03 Jan 2017" }
      source_updated_at                      { Date.parse "03 Jan 2017" }
      source_salesrep_id                     { 3333 }
      sales_rep_user_id                      { 3333 }
      location_user_id                       { 3333 }
      rolling_12_month_sales                 { 3.3 }
      rolling_12_month_sales_ly              { 3.3 }
      latest_order_date                      { Date.parse "03 Jan 2017" }
      rolling_12_month_cogs                  { 3.3 }
      marketing_unsubscribe_reason           { "C-Marketing Unsubscribe Reason" }
      on_suppression_list                    { true }
      growth_percentage                      { 3.3 }
      rolling_1_month_sales                  { 3.3 }
      order_count                            { 3333 }
      average_invoice                        { 3.3 }
      has_clearbit_data                      { true }
      clearbit_data                          { { a: "C-clearbit_data" } }
      custom_data                            { { a: "C-custom_data" } }
      last_clearbit_data_fetch_date          { Date.parse "03 Jan 2017" }
      last_viewed                            { Date.parse "03 Jan 2017" }
      guessed_gender                         { "C-Guessed Gender" }
      guessed_gender_confidence              { 3.3 }
      bounced_email_addresses                { "C-Bounced Email Addresses" }
      last_contact                           { Date.parse "03 Jan 2017" }
      last_email_sent                        { Date.parse "03 Jan 2017" }
      last_email_received                    { Date.parse "03 Jan 2017" }
      last_phone_call                        { Date.parse "03 Jan 2017" }
      rolling_12_month_sales_ly_ly           { 3.3 }
      remote_sales_rep_update                { true }
      last_pickup_date                       { Date.parse "03 Jan 2017" }
      lead_source                            { "C-Lead Source" }
      lead_source_2                          { "C-Lead Source 2" }
      prefix                                 { "C-Prefix" }
      suffix                                 { "C-Suffix" }
      needs_email_remap                      { true }
      job_title                              { "C-Job Title" }
      est_spend                              { 3333 }
      conv_prob                              { 3333 }
      next_activity_date                     { Date.parse "03 Jan 2017" }
      next_activity_type                     { "C-Next Activity Type" }
      use_contact_address                    { true }
      needs_email_validation                 { true }
      source_inquiry_id                      { 3333 }
      email_validation_attempts              { 3333 }
      next_activity                          { { a: "C-next_activity" } }
      oldest_rolling_12_invoice              { Date.parse "03 Jan 2017" }
      oldest_rolling_12_ly_invoice           { Date.parse "03 Jan 2017" }
      oldest_rolling_12_ly_ly_invoice        { Date.parse "03 Jan 2017" }
      oldest_rolling_1_invoice               { Date.parse "03 Jan 2017" }
      unsubscribed                           { true }
      last_meeting                           { Date.parse "03 Jan 2017" }
      old_prospect_status_id                 { 3333 }
      platform_id                            { "C-Platform" }
      platform_data                          { { a: "C-platform_data" } }
      lead_created_at                        { Date.parse "03 Jan 2017" }
      external_id                            { "C-External" }
      single_sale_only_at                    { Date.parse "03 Jan 2017" }
      first_sale_at                          { Date.parse "03 Jan 2017" }
      sales_rep_platform_id                  { "C-Sales Rep Platform" }
      tmp_data                               { { a: "C-tmp_data" } }
    end
  end
end
