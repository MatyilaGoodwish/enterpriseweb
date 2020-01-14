export class qualCastStatistics {
    static Init() {
        let elem = document.createElement('script');
        elem.src = (document.location.protocol == "https:" ? "https://secure" : "http://edge") + ".quantserve.com/quant.js";
        elem.async = true;
        elem.type = "text/javascript";
        let scpt = document.getElementsByTagName('script')[0];
        scpt.parentNode.insertBefore(elem, scpt);
    }
    static Setup() {
        let _qevents = _qevents || [];
    }
    static Start() {
        _qevents.push({
            qacct: "p-egScLuDe6_dbB"
        });
    }
}