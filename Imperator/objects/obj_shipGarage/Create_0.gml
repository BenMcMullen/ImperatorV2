sections = ds_list_create();
ds_list_add(sections, { x: 20, y: 100 });            // HP
ds_list_add(sections, { x: 20, y: 100 + 1 * (sectionHeight + sectionSpacing) });  // Engine
ds_list_add(sections, { x: 20, y: 100 + 2 * (sectionHeight + sectionSpacing) });  // Primary Weapon
ds_list_add(sections, { x: 20, y: 100 + 3 * (sectionHeight + sectionSpacing) });  // Secondary Weapon
ds_list_add(sections, { x: 20, y: 100 + 4 * (sectionHeight + sectionSpacing) });  // Shields
ds_list_add(sections, { x: 20, y: 100 + 5 * (sectionHeight + sectionSpacing) });  // Ship Name
ds_list_add(sections, { x: 20, y: 100 + 6 * (sectionHeight + sectionSpacing) });  // Ship Class
ds_list_add(sections, { x: 20, y: 100 + 7 * (sectionHeight + sectionSpacing) });  // Ship Generation
 hasControl = true;
