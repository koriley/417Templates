function showRecurChoices(me)
{
	var r=new Array("daily","weekly","monthly","yearly");
	for(i=0;i<r.length;i++)
	{
		obj=document.getElementById(r[i]+'div');
		if(obj) obj.style.display='none';
	}
	obj=document.getElementById(me.id+'div');

	if(obj && me.checked) {
		obj.style.display='block';
	}
	

}
function showEventTypeChoices(fld)
{
	
	me=document.getElementById(fld);
	var r=new Array("once","recurring");
	for(i=0;i<r.length;i++)
	{
		obj=document.getElementById(r[i]+'div');
		if(obj) obj.style.display='none';
	}
	obj=document.getElementById(me.id+'div');

	if(obj && me.checked)
		obj.style.display='block';
	if(me.id=='recurring')
	{
		obj=document.getElementById('recurrangediv');
		if(obj) obj.style.display='block';
	} else
	{
		obj=document.getElementById('recurrangediv');
		if(obj) obj.style.display='none';
	}

}
