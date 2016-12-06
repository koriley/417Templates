<script language="javascript" type="text/javascript">
var QS_today = new Date();
function QS_setDate() {
	var today = new Date();
	var tomorrow = new Date(today.getFullYear(),today.getMonth(),today.getDate()+1);
	var MonthA = document.QS_form.MonthA;
	var DayA = document.QS_form.DayA;
	var YearA = document.QS_form.YearA;
	var MonthD = document.QS_form.MonthD;
	var DayD = document.QS_form.DayD;
	var YearD = document.QS_form.YearD;
	MonthA.selectedIndex = today.getMonth();
	MonthD.selectedIndex = tomorrow.getMonth();
	DayA.selectedIndex = today.getDate()-1;
	DayD.selectedIndex = tomorrow.getDate()-1;
	YearA.selectedIndex = 0;
	YearD.selectedIndex = tomorrow.getFullYear()-today.getFullYear();
}
function QS_checkForm(f) {
	for (var i=0; i < f.qstab.length; i++) {
		if (f.qstab[i].checked) {
			f.tab.value = f.qstab[i].value;
			break;
		}
	}
	f.submit();
}
</script>