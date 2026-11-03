package com.mega.chery.adapter.buried.utils;

import android.text.TextUtils;
import com.mega.chery.adapter.buried.controller.BuriedController;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class BuriedPointHelper {

    public interface AvmKey {
        public static final String AVM_CLOSE_MODE = "ZE020F0F#App_Close#ClsMode#";
        public static final String AVM_CLOSE_TIME = "ZE020F0F#App_Close#ClsTime#";
        public static final String AVM_OPEN_MODE = "ZE020F0F#App_Open#OpsMode#";
        public static final String AVM_OPEN_TIME = "ZE020F0F#App_Open#OpsTime#";
        public static final String AVM_SET_ASISDISSW = "ZE020506#AVM_Set#AxisDisSw#";
        public static final String AVM_SET_AUTONASW = "ZE020512#AVM_Set#AutoNASw#";
        public static final String AVM_SET_AUTOZOOM = "ZE020504#AVM_Set#AutoZoomUpSw#";
        public static final String AVM_SET_BOOT_ANIMATE = "ZE020501#AVM_Set#BootAnimationSw#";
        public static final String AVM_SET_CORNER_BOOTSW = "ZE020503#AVM_Set#CornerBootSw#";
        public static final String AVM_SET_LUCENCYCARSET = "ZE020509#AVM_Set#LucencyCarSet#";
        public static final String AVM_SET_OBSACTSW = "ZE020514#AVM_Set#ObsActSw#";
        public static final String AVM_SET_ODINDICATESW = "ZE020505#AVM_Set#ODIndicateSw#";
        public static final String AVM_SET_PDCDISSW = "ZE020507#AVM_Set#PDCDisSw#";
        public static final String AVM_SET_RADARAVSET = "ZE020513#AVM_Set#RadarAVSet#";
        public static final String AVM_SET_SLINKAGESET = "ZE020511#AVM_Set#SlinkageSet#";
        public static final String AVM_SET_SLINKAGESW = "ZE020511#AVM_Set#SlinkageSw#";
        public static final String AVM_SET_STEER = "ZE020502#AVM_Set#SteerSw#";
    }

    public static void startDataPoint(String... strArr) {
        ArrayList arrayList = new ArrayList();
        String strSubstring = "";
        String str = "";
        for (String str2 : strArr) {
            try {
                String[] strArrSplit = str2.split("#");
                if (strArrSplit.length == 4) {
                    String str3 = strArrSplit[0];
                    if (TextUtils.isEmpty(str)) {
                        strSubstring = str3.substring(0, 4);
                        str = strArrSplit[1];
                    }
                    String str4 = strArrSplit[2];
                    String str5 = strArrSplit[3];
                    BuriedController.AttributeInfo attributeInfo = new BuriedController.AttributeInfo();
                    attributeInfo.attributeId = str4;
                    attributeInfo.locationId = str3;
                    attributeInfo.attributeValue = str5;
                    arrayList.add(attributeInfo);
                }
            } catch (ArrayIndexOutOfBoundsException e) {
                e.printStackTrace();
            }
        }
        BuriedController.getInstance().startDataPoint(strSubstring, str, arrayList);
    }
}
