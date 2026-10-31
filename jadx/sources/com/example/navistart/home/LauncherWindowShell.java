package com.example.navistart.home;

import android.content.ComponentName;
import android.os.Process;
import android.os.SystemClock;
import android.view.InputEvent;
import android.view.MotionEvent;
import androidx.core.view.InputDeviceCompat;
import com.hoho.android.usbserial.driver.UsbId;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class LauncherWindowShell {
    /* JADX WARN: Code duplicated, block: B:203:0x05c0 A[Catch: Exception -> 0x0432, all -> 0x0803, TRY_LEAVE, TryCatch #29 {Exception -> 0x0432, blocks: (B:147:0x03f9, B:150:0x0413, B:157:0x044e, B:159:0x0459, B:161:0x048f, B:162:0x0496, B:163:0x04ad, B:156:0x0435, B:174:0x04c5, B:175:0x04d1, B:177:0x04d7, B:180:0x0504, B:183:0x0538, B:182:0x051f, B:189:0x054c, B:191:0x055a, B:192:0x0570, B:193:0x0587, B:196:0x058b, B:198:0x05a6, B:200:0x05aa, B:201:0x05b6, B:203:0x05c0, B:205:0x05c3, B:206:0x05cf, B:209:0x05db, B:210:0x0620, B:215:0x0653, B:216:0x066b, B:218:0x0671, B:221:0x069a, B:223:0x06bc, B:228:0x06cb, B:214:0x063d, B:230:0x06eb, B:232:0x06ee, B:233:0x06fa), top: B:374:0x03f9 }] */
    /* JADX WARN: Code duplicated, block: B:208:0x05d9  */
    /* JADX WARN: Code duplicated, block: B:218:0x0671 A[Catch: all -> 0x042e, Exception -> 0x0432, TryCatch #4 {all -> 0x042e, blocks: (B:147:0x03f9, B:150:0x0413, B:157:0x044e, B:159:0x0459, B:161:0x048f, B:162:0x0496, B:163:0x04ad, B:156:0x0435, B:174:0x04c5, B:175:0x04d1, B:177:0x04d7, B:180:0x0504, B:183:0x0538, B:182:0x051f, B:189:0x054c, B:191:0x055a, B:192:0x0570, B:193:0x0587, B:196:0x058b, B:209:0x05db, B:210:0x0620, B:215:0x0653, B:216:0x066b, B:218:0x0671, B:221:0x069a, B:223:0x06bc, B:228:0x06cb, B:214:0x063d), top: B:374:0x03f9 }] */
    /* JADX WARN: Code duplicated, block: B:228:0x06cb A[Catch: all -> 0x042e, Exception -> 0x0432, TRY_LEAVE, TryCatch #4 {all -> 0x042e, blocks: (B:147:0x03f9, B:150:0x0413, B:157:0x044e, B:159:0x0459, B:161:0x048f, B:162:0x0496, B:163:0x04ad, B:156:0x0435, B:174:0x04c5, B:175:0x04d1, B:177:0x04d7, B:180:0x0504, B:183:0x0538, B:182:0x051f, B:189:0x054c, B:191:0x055a, B:192:0x0570, B:193:0x0587, B:196:0x058b, B:209:0x05db, B:210:0x0620, B:215:0x0653, B:216:0x066b, B:218:0x0671, B:221:0x069a, B:223:0x06bc, B:228:0x06cb, B:214:0x063d), top: B:374:0x03f9 }] */
    /* JADX WARN: Code duplicated, block: B:230:0x06eb A[Catch: Exception -> 0x0432, all -> 0x0803, TRY_ENTER, TRY_LEAVE, TryCatch #29 {Exception -> 0x0432, blocks: (B:147:0x03f9, B:150:0x0413, B:157:0x044e, B:159:0x0459, B:161:0x048f, B:162:0x0496, B:163:0x04ad, B:156:0x0435, B:174:0x04c5, B:175:0x04d1, B:177:0x04d7, B:180:0x0504, B:183:0x0538, B:182:0x051f, B:189:0x054c, B:191:0x055a, B:192:0x0570, B:193:0x0587, B:196:0x058b, B:198:0x05a6, B:200:0x05aa, B:201:0x05b6, B:203:0x05c0, B:205:0x05c3, B:206:0x05cf, B:209:0x05db, B:210:0x0620, B:215:0x0653, B:216:0x066b, B:218:0x0671, B:221:0x069a, B:223:0x06bc, B:228:0x06cb, B:214:0x063d, B:230:0x06eb, B:232:0x06ee, B:233:0x06fa), top: B:374:0x03f9 }] */
    /* JADX WARN: Code duplicated, block: B:247:0x0780 A[Catch: all -> 0x0789, TRY_LEAVE, TryCatch #47 {all -> 0x0789, blocks: (B:245:0x077a, B:247:0x0780), top: B:436:0x077a }] */
    /* JADX WARN: Code duplicated, block: B:253:0x0795 A[Catch: all -> 0x07be, Exception -> 0x07c2, TryCatch #11 {all -> 0x07be, blocks: (B:307:0x088b, B:309:0x0891, B:244:0x075f, B:251:0x078c, B:253:0x0795, B:255:0x07ac, B:261:0x07e5, B:260:0x07c5, B:267:0x07f2, B:266:0x07ef, B:283:0x080e, B:284:0x0829, B:297:0x0851, B:298:0x0868), top: B:385:0x088b }] */
    /* JADX WARN: Code duplicated, block: B:260:0x07c5 A[Catch: all -> 0x07be, Exception -> 0x07c2, TryCatch #11 {all -> 0x07be, blocks: (B:307:0x088b, B:309:0x0891, B:244:0x075f, B:251:0x078c, B:253:0x0795, B:255:0x07ac, B:261:0x07e5, B:260:0x07c5, B:267:0x07f2, B:266:0x07ef, B:283:0x080e, B:284:0x0829, B:297:0x0851, B:298:0x0868), top: B:385:0x088b }] */
    /* JADX WARN: Code duplicated, block: B:309:0x0891 A[Catch: all -> 0x07be, TRY_LEAVE, TryCatch #11 {all -> 0x07be, blocks: (B:307:0x088b, B:309:0x0891, B:244:0x075f, B:251:0x078c, B:253:0x0795, B:255:0x07ac, B:261:0x07e5, B:260:0x07c5, B:267:0x07f2, B:266:0x07ef, B:283:0x080e, B:284:0x0829, B:297:0x0851, B:298:0x0868), top: B:385:0x088b }] */
    /* JADX WARN: Code duplicated, block: B:385:0x088b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:417:0x0972 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:465:0x080e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:478:0x06c8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:482:0x078c A[EDGE_INSN: B:482:0x078c->B:251:0x078c BREAK  A[LOOP:3: B:436:0x077a->B:483:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x026c  */
    /* JADX WARN: Instruction removed from duplicated block: B:260:0x07c5, please report this as an issue */
    public static void main(String[] strArr) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        int i10;
        Object obj;
        char c;
        Throwable th;
        Object[] objArr;
        Method method;
        Field field;
        Field field2;
        Process processStart;
        StringBuilder sb;
        BufferedReader bufferedReader;
        String line;
        String strM2421h;
        Class<?> cls;
        Object[] objArr2;
        Method method2;
        String strSubstring;
        Iterator it;
        boolean z9;
        Object next;
        ComponentName componentName;
        if (Process.myUid() == 2000) {
            char c10 = 2;
            if (strArr.length != 2) {
                return;
            }
            String str = strArr[0];
            String str2 = strArr[1];
            int i11 = 8;
            Class<?> cls2 = Class.forName(AbstractC1387m.m2421h(new byte[]{-107, -53, -103, 31, 90, 35, -8, 103, -100, -60, -113, 9, 66, 43, -18, 44, -38, -52, -109, 29, 64, 62, -78, 0, -102, -43, -120, 25, 120, 43, -14, 40, -109, -64, -113}, new byte[]{-12, -91, -3, 109, 53, 74, -100, 73}));
            Object objInvoke = cls2.getMethod(AbstractC1387m.m2421h(new byte[]{-35, -24, 39, 39, -70, 14, -34, -111, -44, -18, 54}, new byte[]{-70, -115, 83, 110, -44, 125, -86, -16}), null).invoke(null, null);
            String strM2421h2 = AbstractC1387m.m2421h(new byte[]{-67, -43, 51, -67, 110, -19, 14, -53, -92, -50, 45, -99, 123, -4, 41, -47}, new byte[]{-44, -69, 89, -40, 13, -103, 71, -91});
            Class cls3 = Integer.TYPE;
            Method method3 = cls2.getMethod(strM2421h2, InputEvent.class, cls3);
            Method method4 = InputEvent.class.getMethod(AbstractC1387m.m2421h(new byte[]{95, 67, 117, -100, 89, 46, 17, 109, 77, 95, 72, -68}, new byte[]{44, 38, 1, -40, 48, 93, 97, 1}), cls3);
            Object objInvoke2 = Class.forName(AbstractC1387m.m2421h(new byte[]{112, -49, -53, 8, 70, -65, 15, 21, 121, -64, -35, 30, 94, -73, 25, 94, 63, -59, -58, 9, 89, -70, 10, 66, 63, -27, -58, 9, 89, -70, 10, 66, 92, -64, -63, 27, 78, -77, 25, 124, 125, -50, -51, 27, 69}, new byte[]{17, -95, -81, 122, 41, -42, 107, 59})).getMethod(AbstractC1387m.m2421h(new byte[]{-36, 114, -66, -89, -80, 66, -110, 5, -43, 116, -81}, new byte[]{-69, 23, -54, -18, -34, 49, -26, 100}), null).invoke(null, null);
            int i12 = 0;
            Method method5 = objInvoke2.getClass().getMethod(AbstractC1387m.m2421h(new byte[]{-86, 1, 112, 2, 100, 72, 3, -74, -84, 29, 77, 40, 107, 84}, new byte[]{-51, 100, 4, 70, 13, 59, 115, -38}), cls3);
            ServerSocket serverSocket = new ServerSocket(38766, 8, InetAddress.getByName(AbstractC1387m.m2421h(new byte[]{123, -57, 95, 15, 56, 2, 77, 96, 123}, new byte[]{74, -11, 104, 33, 8, 44, 125, 78})));
            loop0: while (true) {
                try {
                    try {
                        Socket socketAccept = serverSocket.accept();
                        try {
                            socketAccept.setSoTimeout(UsbId.SILABS_CP2102);
                            try {
                                byte[] bArr = new byte[i11];
                                // fill-array-data instruction
                                bArr[0] = 64;
                                bArr[1] = -18;
                                bArr[2] = 68;
                                bArr[3] = -24;
                                bArr[4] = -74;
                                bArr[5] = -75;
                                bArr[6] = -38;
                                bArr[7] = -110;
                                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(socketAccept.getInputStream(), AbstractC1387m.m2421h(new byte[]{21, -70, 2, -59, -114}, bArr)));
                                try {
                                    i10 = 8;
                                    try {
                                        try {
                                            try {
                                                try {
                                                    PrintWriter printWriter = new PrintWriter((Writer) new OutputStreamWriter(socketAccept.getOutputStream(), AbstractC1387m.m2421h(new byte[]{121, -63, -28, -2, -87}, new byte[]{44, -107, -94, -45, -111, -63, 62, 47})), true);
                                                    if (str.equals(bufferedReader2.readLine())) {
                                                        i10 = 8;
                                                        try {
                                                            try {
                                                                printWriter.println(AbstractC1387m.m2421h(new byte[]{84, 97, -43, -2, 97}, new byte[]{6, 36, -108, -70, 56, -12, 90, -101}));
                                                                while (true) {
                                                                    String line2 = bufferedReader2.readLine();
                                                                    if (line2 != null) {
                                                                        try {
                                                                            try {
                                                                                String[] strArrSplit = line2.split(" ");
                                                                                try {
                                                                                    if (strArrSplit[i12].equals(AbstractC1387m.m2421h(new byte[]{-47, 75, -113, 54}, new byte[]{-127, 2, -63, 113, -37, -88, -31, -90}))) {
                                                                                        printWriter.println(AbstractC1387m.m2421h(new byte[]{122, -87}, new byte[]{53, -30, -21, -121, -94, -17, 43, -115}));
                                                                                    } else {
                                                                                        try {
                                                                                            int i13 = Integer.parseInt(strArrSplit[1]);
                                                                                            Object objInvoke3 = method5.invoke(objInvoke2, Integer.valueOf(i13));
                                                                                            if (i13 <= 0 || objInvoke3 == null) {
                                                                                                break loop0;
                                                                                            }
                                                                                            method5 = method5;
                                                                                            try {
                                                                                                str = str;
                                                                                                try {
                                                                                                    try {
                                                                                                        try {
                                                                                                            if (str2.equals(objInvoke3.getClass().getField(AbstractC1387m.m2421h(new byte[]{96, -3, -34, -56, 37, -36, 97, -60, 100, -21, -41, -56, 25, -19, 109, -62}, new byte[]{15, -118, -80, -83, 87, -116, 0, -89})).get(objInvoke3)) && String.valueOf(objInvoke3.getClass().getField(AbstractC1387m.m2421h(new byte[]{-110, ByteCompanionObject.MAX_VALUE, 55, -73}, new byte[]{-4, 30, 90, -46, 79, -13, -21, -97})).get(objInvoke3)).startsWith(AbstractC1387m.m2421h(new byte[]{-89, 124, -37, 12, 45, -14, 118, -102, -126, 72, -94}, new byte[]{-19, 63, -113, 33, 90, -101, 24, -2}))) {
                                                                                                                if (strArrSplit[i12].equals(AbstractC1387m.m2421h(new byte[]{22, -110, -25, 33, 6, 113}, new byte[]{90, -45, -78, 111, 69, 57, -43, 58}))) {
                                                                                                                    str2 = str2;
                                                                                                                    obj = objInvoke;
                                                                                                                    if (strArrSplit[2].matches(AbstractC1387m.m2421h(new byte[]{-92, 69, 35, 36, 90, -98, -12, -115, -46, 29, 81, 112, 63, -18, -123, -110, -92, 69, 35, 36, 90, -98, -12, -115, -46, 29, 81, 112, 63, -18, -123}, new byte[]{-1, 36, 14, 94, 27, -77, -82, -67}))) {
                                                                                                                        throw new IllegalArgumentException(AbstractC1387m.m2421h(new byte[]{-103, 65, 87, 38, 15, 121, 108, 39, -77, 64, 76, 55, 12, 126, 109, 105, -92}, new byte[]{-48, 47, 33, 71, 99, 16, 8, 7}));
                                                                                                                    }
                                                                                                                    if (strArrSplit[i12].equals(AbstractC1387m.m2421h(new byte[]{121, -3, 16, 36, -105, -80}, new byte[]{60, -77, 67, 113, -59, -11, 118, -21}))) {
                                                                                                                        Object objInvoke4 = Class.forName(AbstractC1387m.m2421h(new byte[]{69, 114, 62, 1, 93, -15, 35, 118, 69, 108, 42, 93, 115, -5, 51, 49, 82, 117, 46, 10, 102, -7, 52, 51, 105, 125, 52, 18, 85, -3, 53}, new byte[]{36, 28, 90, 115, 50, -104, 71, 88})).getMethod(AbstractC1387m.m2421h(new byte[]{-107, 85, 11, 50, -123, 102, 24, 58, -111, 85}, new byte[]{-14, 48, ByteCompanionObject.MAX_VALUE, 97, -32, 20, 110, 83}), null).invoke(null, null);
                                                                                                                        cls = Class.forName(AbstractC1387m.m2421h(new byte[]{-18, -42, -43, 103, 71, 20, 86, 25, -18, -56, -63, 59, 97, 60, 81, 67, -26, -50, -40, 97, 81, 41, 83, 68, -28, -11, -48, 123, 73, 26, 87, 69}, new byte[]{-113, -72, -79, 21, 40, 125, 50, 55}));
                                                                                                                        method2 = cls.getMethod(AbstractC1387m.m2421h(new byte[]{-73, -2, -25, 9, -86, 73, 25, 120, -65, -17, -57, 41, -75, 78, 2, 121, -74, -12, -32}, new byte[]{-48, -101, -109, 72, -58, 37, 75, 23}), null);
                                                                                                                        objArr2 = null;
                                                                                                                        String str3 = strArrSplit[2];
                                                                                                                        strSubstring = str3.substring(i12, str3.indexOf(47));
                                                                                                                        it = ((List) method2.invoke(objInvoke4, objArr2)).iterator();
                                                                                                                        while (true) {
                                                                                                                            if (it.hasNext()) {
                                                                                                                                z9 = false;
                                                                                                                                break;
                                                                                                                            }
                                                                                                                            next = it.next();
                                                                                                                            if (next.getClass().getField(AbstractC1387m.m2421h(new byte[]{-69, -24, 108, -12, 16, 52, 10, 90, -69}, new byte[]{-33, -127, 31, -124, 124, 85, 115, 19})).getInt(next) == i13) {
                                                                                                                                z9 = true;
                                                                                                                                break;
                                                                                                                            }
                                                                                                                        }
                                                                                                                        if (z9) {
                                                                                                                            printWriter.println(AbstractC1387m.m2421h(new byte[]{44, 53}, new byte[]{99, 126, -31, -51, 43, -80, 66, 19}));
                                                                                                                        } else {
                                                                                                                            processStart = new ProcessBuilder(AbstractC1387m.m2421h(new byte[]{106, 60}, new byte[]{11, 81, -31, 57, -45, -61, -90, -72}), AbstractC1387m.m2421h(new byte[]{-88, 110, -93, 31, 3}, new byte[]{-37, 26, -62, 109, 119, -54, 124, ByteCompanionObject.MAX_VALUE}), AbstractC1387m.m2421h(new byte[]{81, 10, -54, -54, 116, 104, -104, 92, 5}, new byte[]{124, 39, -82, -93, 7, 24, -12, Base64.padSymbol}), strArrSplit[1], AbstractC1387m.m2421h(new byte[]{-27, -52, 7, 8, 89, -110, 32, 112, -95, -113, 23, 44, 88, -110, 42}, new byte[]{-56, -31, 112, 97, 55, -10, 79, 7}), AbstractC1387m.m2421h(new byte[]{-86}, new byte[]{-101, -87, -82, 3, -68, -16, -24, -73}), AbstractC1387m.m2421h(new byte[]{-80, -78}, new byte[]{-99, -36, -69, -67, 28, -95, 73, 50}), strArrSplit[2]).redirectErrorStream(true).start();
                                                                                                                            sb = new StringBuilder();
                                                                                                                            bufferedReader = new BufferedReader(new InputStreamReader(processStart.getInputStream()));
                                                                                                                            while (true) {
                                                                                                                                line = bufferedReader.readLine();
                                                                                                                                if (line != null) {
                                                                                                                                    break;
                                                                                                                                    break;
                                                                                                                                } else {
                                                                                                                                    sb.append(line);
                                                                                                                                    sb.append(' ');
                                                                                                                                }
                                                                                                                            }
                                                                                                                            bufferedReader.close();
                                                                                                                            if (processStart.waitFor() == 0) {
                                                                                                                                strM2421h = AbstractC1387m.m2421h(new byte[]{-40, -25, 92, -84, -39, -23}, new byte[]{-99, -75, 14, -29, -117, -55, -39, 74}) + ((Object) sb);
                                                                                                                            } else {
                                                                                                                                strM2421h = AbstractC1387m.m2421h(new byte[]{-40, -25, 92, -84, -39, -23}, new byte[]{-99, -75, 14, -29, -117, -55, -39, 74}) + ((Object) sb);
                                                                                                                            }
                                                                                                                            printWriter.println(strM2421h);
                                                                                                                        }
                                                                                                                        method5 = method5;
                                                                                                                        str = str;
                                                                                                                        str2 = str2;
                                                                                                                        objInvoke = obj;
                                                                                                                        i12 = 0;
                                                                                                                    } else {
                                                                                                                        processStart = new ProcessBuilder(AbstractC1387m.m2421h(new byte[]{106, 60}, new byte[]{11, 81, -31, 57, -45, -61, -90, -72}), AbstractC1387m.m2421h(new byte[]{-88, 110, -93, 31, 3}, new byte[]{-37, 26, -62, 109, 119, -54, 124, ByteCompanionObject.MAX_VALUE}), AbstractC1387m.m2421h(new byte[]{81, 10, -54, -54, 116, 104, -104, 92, 5}, new byte[]{124, 39, -82, -93, 7, 24, -12, Base64.padSymbol}), strArrSplit[1], AbstractC1387m.m2421h(new byte[]{-27, -52, 7, 8, 89, -110, 32, 112, -95, -113, 23, 44, 88, -110, 42}, new byte[]{-56, -31, 112, 97, 55, -10, 79, 7}), AbstractC1387m.m2421h(new byte[]{-86}, new byte[]{-101, -87, -82, 3, -68, -16, -24, -73}), AbstractC1387m.m2421h(new byte[]{-80, -78}, new byte[]{-99, -36, -69, -67, 28, -95, 73, 50}), strArrSplit[2]).redirectErrorStream(true).start();
                                                                                                                        sb = new StringBuilder();
                                                                                                                        bufferedReader = new BufferedReader(new InputStreamReader(processStart.getInputStream()));
                                                                                                                        while (true) {
                                                                                                                            line = bufferedReader.readLine();
                                                                                                                            if (line != null) {
                                                                                                                                break;
                                                                                                                                break;
                                                                                                                            } else {
                                                                                                                                sb.append(line);
                                                                                                                                sb.append(' ');
                                                                                                                            }
                                                                                                                        }
                                                                                                                        bufferedReader.close();
                                                                                                                        if (processStart.waitFor() == 0) {
                                                                                                                            strM2421h = AbstractC1387m.m2421h(new byte[]{-40, -25, 92, -84, -39, -23}, new byte[]{-99, -75, 14, -29, -117, -55, -39, 74}) + ((Object) sb);
                                                                                                                        } else {
                                                                                                                            strM2421h = AbstractC1387m.m2421h(new byte[]{-40, -25, 92, -84, -39, -23}, new byte[]{-99, -75, 14, -29, -117, -55, -39, 74}) + ((Object) sb);
                                                                                                                        }
                                                                                                                        printWriter.println(strM2421h);
                                                                                                                        method5 = method5;
                                                                                                                        str = str;
                                                                                                                        str2 = str2;
                                                                                                                        objInvoke = obj;
                                                                                                                        i12 = 0;
                                                                                                                    }
                                                                                                                } else {
                                                                                                                    try {
                                                                                                                        try {
                                                                                                                            if (strArrSplit[i12].equals(AbstractC1387m.m2421h(new byte[]{-53, 38, -2, -109, 35, -8}, new byte[]{-114, 104, -83, -58, 113, -67, -36, -21}))) {
                                                                                                                                str2 = str2;
                                                                                                                                obj = objInvoke;
                                                                                                                                try {
                                                                                                                                    try {
                                                                                                                                        if (strArrSplit[2].matches(AbstractC1387m.m2421h(new byte[]{-92, 69, 35, 36, 90, -98, -12, -115, -46, 29, 81, 112, 63, -18, -123, -110, -92, 69, 35, 36, 90, -98, -12, -115, -46, 29, 81, 112, 63, -18, -123}, new byte[]{-1, 36, 14, 94, 27, -77, -82, -67}))) {
                                                                                                                                            throw new IllegalArgumentException(AbstractC1387m.m2421h(new byte[]{-103, 65, 87, 38, 15, 121, 108, 39, -77, 64, 76, 55, 12, 126, 109, 105, -92}, new byte[]{-48, 47, 33, 71, 99, 16, 8, 7}));
                                                                                                                                        }
                                                                                                                                        if (strArrSplit[i12].equals(AbstractC1387m.m2421h(new byte[]{121, -3, 16, 36, -105, -80}, new byte[]{60, -77, 67, 113, -59, -11, 118, -21}))) {
                                                                                                                                            Object objInvoke5 = Class.forName(AbstractC1387m.m2421h(new byte[]{69, 114, 62, 1, 93, -15, 35, 118, 69, 108, 42, 93, 115, -5, 51, 49, 82, 117, 46, 10, 102, -7, 52, 51, 105, 125, 52, 18, 85, -3, 53}, new byte[]{36, 28, 90, 115, 50, -104, 71, 88})).getMethod(AbstractC1387m.m2421h(new byte[]{-107, 85, 11, 50, -123, 102, 24, 58, -111, 85}, new byte[]{-14, 48, ByteCompanionObject.MAX_VALUE, 97, -32, 20, 110, 83}), null).invoke(null, null);
                                                                                                                                            cls = Class.forName(AbstractC1387m.m2421h(new byte[]{-18, -42, -43, 103, 71, 20, 86, 25, -18, -56, -63, 59, 97, 60, 81, 67, -26, -50, -40, 97, 81, 41, 83, 68, -28, -11, -48, 123, 73, 26, 87, 69}, new byte[]{-113, -72, -79, 21, 40, 125, 50, 55}));
                                                                                                                                            try {
                                                                                                                                                method2 = cls.getMethod(AbstractC1387m.m2421h(new byte[]{-73, -2, -25, 9, -86, 73, 25, 120, -65, -17, -57, 41, -75, 78, 2, 121, -74, -12, -32}, new byte[]{-48, -101, -109, 72, -58, 37, 75, 23}), null);
                                                                                                                                                objArr2 = null;
                                                                                                                                                while (true) {
                                                                                                                                                    if (it.hasNext()) {
                                                                                                                                                        z9 = false;
                                                                                                                                                        break;
                                                                                                                                                    }
                                                                                                                                                    next = it.next();
                                                                                                                                                    if (next.getClass().getField(AbstractC1387m.m2421h(new byte[]{-69, -24, 108, -12, 16, 52, 10, 90, -69}, new byte[]{-33, -127, 31, -124, 124, 85, 115, 19})).getInt(next) == i13 && (componentName = (ComponentName) next.getClass().getField(AbstractC1387m.m2421h(new byte[]{-49, -36, 112, 7, 90, -71, -39, -18, -46, -57, 121}, new byte[]{-69, -77, 0, 70, 57, -51, -80, -104})).get(next)) != null && strSubstring.equals(componentName.getPackageName())) {
                                                                                                                                                        z9 = true;
                                                                                                                                                        break;
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            } catch (NoSuchMethodException unused) {
                                                                                                                                                objArr2 = null;
                                                                                                                                                method2 = cls.getMethod(AbstractC1387m.m2421h(new byte[]{80, -53, 60, -120, -123, -87, 100, 23, 86, -51, 35, ByteCompanionObject.MIN_VALUE, -121, -93, 88, 16}, new byte[]{55, -82, 72, -55, -23, -59, 55, 99}), null);
                                                                                                                                            }
                                                                                                                                            String str4 = strArrSplit[2];
                                                                                                                                            strSubstring = str4.substring(i12, str4.indexOf(47));
                                                                                                                                            it = ((List) method2.invoke(objInvoke5, objArr2)).iterator();
                                                                                                                                            if (z9) {
                                                                                                                                                printWriter.println(AbstractC1387m.m2421h(new byte[]{44, 53}, new byte[]{99, 126, -31, -51, 43, -80, 66, 19}));
                                                                                                                                            } else {
                                                                                                                                                try {
                                                                                                                                                    try {
                                                                                                                                                        try {
                                                                                                                                                            try {
                                                                                                                                                                processStart = new ProcessBuilder(AbstractC1387m.m2421h(new byte[]{106, 60}, new byte[]{11, 81, -31, 57, -45, -61, -90, -72}), AbstractC1387m.m2421h(new byte[]{-88, 110, -93, 31, 3}, new byte[]{-37, 26, -62, 109, 119, -54, 124, ByteCompanionObject.MAX_VALUE}), AbstractC1387m.m2421h(new byte[]{81, 10, -54, -54, 116, 104, -104, 92, 5}, new byte[]{124, 39, -82, -93, 7, 24, -12, Base64.padSymbol}), strArrSplit[1], AbstractC1387m.m2421h(new byte[]{-27, -52, 7, 8, 89, -110, 32, 112, -95, -113, 23, 44, 88, -110, 42}, new byte[]{-56, -31, 112, 97, 55, -10, 79, 7}), AbstractC1387m.m2421h(new byte[]{-86}, new byte[]{-101, -87, -82, 3, -68, -16, -24, -73}), AbstractC1387m.m2421h(new byte[]{-80, -78}, new byte[]{-99, -36, -69, -67, 28, -95, 73, 50}), strArrSplit[2]).redirectErrorStream(true).start();
                                                                                                                                                                sb = new StringBuilder();
                                                                                                                                                                bufferedReader = new BufferedReader(new InputStreamReader(processStart.getInputStream()));
                                                                                                                                                                while (true) {
                                                                                                                                                                    try {
                                                                                                                                                                        line = bufferedReader.readLine();
                                                                                                                                                                        if (line != null) {
                                                                                                                                                                            break;
                                                                                                                                                                        }
                                                                                                                                                                        sb.append(line);
                                                                                                                                                                        sb.append(' ');
                                                                                                                                                                    } catch (Throwable th2) {
                                                                                                                                                                        try {
                                                                                                                                                                            bufferedReader.close();
                                                                                                                                                                            throw th2;
                                                                                                                                                                        } catch (Throwable th3) {
                                                                                                                                                                            th2.addSuppressed(th3);
                                                                                                                                                                            throw th2;
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                                bufferedReader.close();
                                                                                                                                                                if (processStart.waitFor() == 0 || sb.indexOf(AbstractC1387m.m2421h(new byte[]{114, -30, 62, -36, -75, 38}, new byte[]{55, -112, 76, -77, -57, 28, -103, ByteCompanionObject.MIN_VALUE})) >= 0) {
                                                                                                                                                                    strM2421h = AbstractC1387m.m2421h(new byte[]{-40, -25, 92, -84, -39, -23}, new byte[]{-99, -75, 14, -29, -117, -55, -39, 74}) + ((Object) sb);
                                                                                                                                                                } else {
                                                                                                                                                                    strM2421h = AbstractC1387m.m2421h(new byte[]{-45, 29}, new byte[]{-100, 86, 19, 101, 33, -46, 63, 59});
                                                                                                                                                                }
                                                                                                                                                                printWriter.println(strM2421h);
                                                                                                                                                            } catch (Exception e) {
                                                                                                                                                                e = e;
                                                                                                                                                                try {
                                                                                                                                                                    if (e instanceof InvocationTargetException) {
                                                                                                                                                                        try {
                                                                                                                                                                            if (e.getCause() != null) {
                                                                                                                                                                                e = e.getCause();
                                                                                                                                                                            }
                                                                                                                                                                        } catch (Throwable th4) {
                                                                                                                                                                            th = th4;
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                    StringBuilder sb2 = new StringBuilder();
                                                                                                                                                                    try {
                                                                                                                                                                        i10 = 8;
                                                                                                                                                                        try {
                                                                                                                                                                            try {
                                                                                                                                                                                sb2.append(AbstractC1387m.m2421h(new byte[]{-74, 67, 16, 43, -89, -103}, new byte[]{-13, 17, 66, 100, -11, -71, -82, 117}));
                                                                                                                                                                                sb2.append(e.getClass().getSimpleName());
                                                                                                                                                                                c = 2;
                                                                                                                                                                                try {
                                                                                                                                                                                    i10 = 8;
                                                                                                                                                                                    try {
                                                                                                                                                                                        sb2.append(AbstractC1387m.m2421h(new byte[]{109, 101}, new byte[]{87, 69, -103, -26, -12, -85, 19, 49}));
                                                                                                                                                                                        sb2.append(String.valueOf(e.getMessage()).replace('\n', ' ').replace('\r', ' '));
                                                                                                                                                                                        printWriter.println(sb2.toString());
                                                                                                                                                                                    } catch (Throwable th5) {
                                                                                                                                                                                        th = th5;
                                                                                                                                                                                    }
                                                                                                                                                                                } catch (Throwable th6) {
                                                                                                                                                                                    th = th6;
                                                                                                                                                                                    i10 = 8;
                                                                                                                                                                                }
                                                                                                                                                                            } catch (Throwable th7) {
                                                                                                                                                                                th = th7;
                                                                                                                                                                                i10 = 8;
                                                                                                                                                                                c = 2;
                                                                                                                                                                            }
                                                                                                                                                                        } catch (Throwable th8) {
                                                                                                                                                                            th = th8;
                                                                                                                                                                        }
                                                                                                                                                                    } catch (Throwable th9) {
                                                                                                                                                                        th = th9;
                                                                                                                                                                        c = 2;
                                                                                                                                                                    }
                                                                                                                                                                } catch (Throwable th10) {
                                                                                                                                                                    th = th10;
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        } catch (Exception e6) {
                                                                                                                                                            e = e6;
                                                                                                                                                        } catch (Throwable th11) {
                                                                                                                                                            th = th11;
                                                                                                                                                        }
                                                                                                                                                    } catch (Exception e10) {
                                                                                                                                                        e = e10;
                                                                                                                                                    } catch (Throwable th12) {
                                                                                                                                                        th = th12;
                                                                                                                                                    }
                                                                                                                                                } catch (Exception e11) {
                                                                                                                                                    e = e11;
                                                                                                                                                    if (e instanceof InvocationTargetException) {
                                                                                                                                                        if (e.getCause() != null) {
                                                                                                                                                            e = e.getCause();
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    StringBuilder sb3 = new StringBuilder();
                                                                                                                                                    i10 = 8;
                                                                                                                                                    sb3.append(AbstractC1387m.m2421h(new byte[]{-74, 67, 16, 43, -89, -103}, new byte[]{-13, 17, 66, 100, -11, -71, -82, 117}));
                                                                                                                                                    sb3.append(e.getClass().getSimpleName());
                                                                                                                                                    c = 2;
                                                                                                                                                    i10 = 8;
                                                                                                                                                    sb3.append(AbstractC1387m.m2421h(new byte[]{109, 101}, new byte[]{87, 69, -103, -26, -12, -85, 19, 49}));
                                                                                                                                                    sb3.append(String.valueOf(e.getMessage()).replace('\n', ' ').replace('\r', ' '));
                                                                                                                                                    printWriter.println(sb3.toString());
                                                                                                                                                    method5 = method5;
                                                                                                                                                    str = str;
                                                                                                                                                    str2 = str2;
                                                                                                                                                    objInvoke = obj;
                                                                                                                                                    i12 = 0;
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        } else {
                                                                                                                                            processStart = new ProcessBuilder(AbstractC1387m.m2421h(new byte[]{106, 60}, new byte[]{11, 81, -31, 57, -45, -61, -90, -72}), AbstractC1387m.m2421h(new byte[]{-88, 110, -93, 31, 3}, new byte[]{-37, 26, -62, 109, 119, -54, 124, ByteCompanionObject.MAX_VALUE}), AbstractC1387m.m2421h(new byte[]{81, 10, -54, -54, 116, 104, -104, 92, 5}, new byte[]{124, 39, -82, -93, 7, 24, -12, Base64.padSymbol}), strArrSplit[1], AbstractC1387m.m2421h(new byte[]{-27, -52, 7, 8, 89, -110, 32, 112, -95, -113, 23, 44, 88, -110, 42}, new byte[]{-56, -31, 112, 97, 55, -10, 79, 7}), AbstractC1387m.m2421h(new byte[]{-86}, new byte[]{-101, -87, -82, 3, -68, -16, -24, -73}), AbstractC1387m.m2421h(new byte[]{-80, -78}, new byte[]{-99, -36, -69, -67, 28, -95, 73, 50}), strArrSplit[2]).redirectErrorStream(true).start();
                                                                                                                                            sb = new StringBuilder();
                                                                                                                                            bufferedReader = new BufferedReader(new InputStreamReader(processStart.getInputStream()));
                                                                                                                                            while (true) {
                                                                                                                                                line = bufferedReader.readLine();
                                                                                                                                                if (line != null) {
                                                                                                                                                    break;
                                                                                                                                                    break;
                                                                                                                                                } else {
                                                                                                                                                    sb.append(line);
                                                                                                                                                    sb.append(' ');
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            bufferedReader.close();
                                                                                                                                            if (processStart.waitFor() == 0) {
                                                                                                                                                strM2421h = AbstractC1387m.m2421h(new byte[]{-40, -25, 92, -84, -39, -23}, new byte[]{-99, -75, 14, -29, -117, -55, -39, 74}) + ((Object) sb);
                                                                                                                                            } else {
                                                                                                                                                strM2421h = AbstractC1387m.m2421h(new byte[]{-40, -25, 92, -84, -39, -23}, new byte[]{-99, -75, 14, -29, -117, -55, -39, 74}) + ((Object) sb);
                                                                                                                                            }
                                                                                                                                            printWriter.println(strM2421h);
                                                                                                                                        }
                                                                                                                                    } catch (Throwable th13) {
                                                                                                                                        th = th13;
                                                                                                                                    }
                                                                                                                                } catch (Throwable th14) {
                                                                                                                                    th = th14;
                                                                                                                                }
                                                                                                                            } else if (strArrSplit[i12].equals(AbstractC1387m.m2421h(new byte[]{17, -59, -81, 13, 18}, new byte[]{69, -118, -6, 78, 90, -105, 60, -79}))) {
                                                                                                                                try {
                                                                                                                                    int i14 = Integer.parseInt(strArrSplit[2]);
                                                                                                                                    if (i14 < 0 || i14 > 3) {
                                                                                                                                        throw new IllegalArgumentException(AbstractC1387m.m2421h(new byte[]{93, -7, -63, -40, -33, -43, 25, 126, 97, -7, -63, -53, -42, -62, 25, 97, 96, -4, -42}, new byte[]{14, -112, -81, -65, -77, -80, 57, 14}));
                                                                                                                                    }
                                                                                                                                    MotionEvent motionEventObtain = MotionEvent.obtain(Long.parseLong(strArrSplit[5]), Long.parseLong(strArrSplit[6]), i14, Float.parseFloat(strArrSplit[3]), Float.parseFloat(strArrSplit[4]), 0);
                                                                                                                                    try {
                                                                                                                                        motionEventObtain.setSource(InputDeviceCompat.SOURCE_TOUCHSCREEN);
                                                                                                                                        method4.invoke(motionEventObtain, Integer.valueOf(i13));
                                                                                                                                        printWriter.println(Boolean.TRUE.equals(method3.invoke(objInvoke, motionEventObtain, Integer.valueOf(i12))) ? AbstractC1387m.m2421h(new byte[]{47, -102}, new byte[]{96, -47, 32, 24, 47, 71, -117, -115}) : AbstractC1387m.m2421h(new byte[]{-91, 11, -19, -112, 41, 74, -123, 87, -112, 44, -53, -1, 9, 15, -90, 92, -125, 45, -38, -69}, new byte[]{-32, 89, -65, -33, 123, 106, -52, 57}));
                                                                                                                                        motionEventObtain.recycle();
                                                                                                                                        str2 = str2;
                                                                                                                                        obj = objInvoke;
                                                                                                                                    } catch (Throwable th15) {
                                                                                                                                        motionEventObtain.recycle();
                                                                                                                                        throw th15;
                                                                                                                                    }
                                                                                                                                } catch (Throwable th16) {
                                                                                                                                    th = th16;
                                                                                                                                    str2 = str2;
                                                                                                                                    obj = objInvoke;
                                                                                                                                    c = 2;
                                                                                                                                    i10 = 8;
                                                                                                                                    if (socketAccept != null) {
                                                                                                                                        try {
                                                                                                                                            socketAccept.close();
                                                                                                                                        } catch (Throwable th17) {
                                                                                                                                            th.addSuppressed(th17);
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    throw th;
                                                                                                                                }
                                                                                                                            } else if (strArrSplit[i12].equals(AbstractC1387m.m2421h(new byte[]{-112, 119, 113, -78, 48}, new byte[]{-45, 59, 62, -31, 117, -25, -102, -14}))) {
                                                                                                                                Object objInvoke6 = Class.forName(AbstractC1387m.m2421h(new byte[]{20, -35, -115, -111, -83, 17, 121, -10, 20, -61, -103, -51, -125, 27, 105, -79, 3, -38, -99, -102, -106, 25, 110, -77, 56, -46, -121, -126, -91, 29, 111}, new byte[]{117, -77, -23, -29, -62, 120, 29, -40})).getMethod(AbstractC1387m.m2421h(new byte[]{27, 96, -49, 28, -50, -62, 42, 118, 31, 96}, new byte[]{124, 5, -69, 79, -85, -80, 92, 31}), null).invoke(null, null);
                                                                                                                                Class<?> cls4 = Class.forName(AbstractC1387m.m2421h(new byte[]{113, -113, -44, -62, -118, 105, -104, 78, 113, -111, -64, -98, -84, 65, -97, 20, 121, -105, -39, -60, -100, 84, -99, 19, 123, -84, -47, -34, -124, 103, -103, 18}, new byte[]{16, -31, -80, -80, -27, 0, -4, 96}));
                                                                                                                                try {
                                                                                                                                    method = cls4.getMethod(AbstractC1387m.m2421h(new byte[]{51, 24, -105, -61, 38, 42, -56, Base64.padSymbol, 59, 9, -73, -29, 57, 45, -45, 60, 50, 18, -112}, new byte[]{84, 125, -29, -126, 74, 70, -102, 82}), null);
                                                                                                                                    objArr = null;
                                                                                                                                } catch (NoSuchMethodException unused2) {
                                                                                                                                    objArr = null;
                                                                                                                                    method = cls4.getMethod(AbstractC1387m.m2421h(new byte[]{123, 118, -26, -32, -42, 119, 78, 88, 125, 112, -7, -24, -44, 125, 114, 95}, new byte[]{28, 19, -110, -95, -70, 27, 29, 44}), null);
                                                                                                                                }
                                                                                                                                Iterator it2 = ((List) method.invoke(objInvoke6, objArr)).iterator();
                                                                                                                                while (it2.hasNext()) {
                                                                                                                                    Object next2 = it2.next();
                                                                                                                                    str2 = str2;
                                                                                                                                    Iterator it3 = it2;
                                                                                                                                    try {
                                                                                                                                        obj = objInvoke;
                                                                                                                                        try {
                                                                                                                                            try {
                                                                                                                                                if (next2.getClass().getField(AbstractC1387m.m2421h(new byte[]{-67, -64, 126, -121, 17, 104, 41, -90, -67}, new byte[]{-39, -87, 13, -9, 125, 9, 80, -17})).getInt(next2) == i13) {
                                                                                                                                                    try {
                                                                                                                                                        field2 = next2.getClass().getField(AbstractC1387m.m2421h(new byte[]{-104, 24, 83, -71, -28, -75, -23, 6, -112, 57, 94, -90}, new byte[]{-5, 112, 58, -43, ByteCompanionObject.MIN_VALUE, -31, -120, 117}));
                                                                                                                                                    } catch (NoSuchFieldException unused3) {
                                                                                                                                                        field2 = next2.getClass().getField(AbstractC1387m.m2421h(new byte[]{59, -101, -27, -16, 11, -113, -43}, new byte[]{79, -6, -106, -101, 66, -21, -90, -68}));
                                                                                                                                                    }
                                                                                                                                                    int[] iArr = (int[]) field2.get(next2);
                                                                                                                                                    int length = iArr.length;
                                                                                                                                                    int i15 = i12;
                                                                                                                                                    while (i15 < length) {
                                                                                                                                                        int[] iArr2 = iArr;
                                                                                                                                                        int i16 = length;
                                                                                                                                                        int i17 = i15;
                                                                                                                                                        if (!Boolean.TRUE.equals(cls4.getMethod(AbstractC1387m.m2421h(new byte[]{-10, 109, 67, -13, 126, -100, -68, 98, -9, 99}, new byte[]{-124, 8, 46, -100, 8, -7, -24, 3}), cls3).invoke(objInvoke6, Integer.valueOf(iArr[i15])))) {
                                                                                                                                                            throw new IllegalStateException(AbstractC1387m.m2421h(new byte[]{23, -80, 113, -77, -87, -103, 79, 23, 44, -89, 99, -76, -87, -103, 79, 16, 38, -78, 118, -67, -19}, new byte[]{67, -47, 2, -40, -119, -21, 42, 122}));
                                                                                                                                                        }
                                                                                                                                                        i15 = i17 + 1;
                                                                                                                                                        iArr = iArr2;
                                                                                                                                                        length = i16;
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                str2 = str2;
                                                                                                                                                it2 = it3;
                                                                                                                                                objInvoke = obj;
                                                                                                                                            } catch (Exception e12) {
                                                                                                                                                e = e12;
                                                                                                                                                if (e instanceof InvocationTargetException) {
                                                                                                                                                    if (e.getCause() != null) {
                                                                                                                                                        e = e.getCause();
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                StringBuilder sb4 = new StringBuilder();
                                                                                                                                                i10 = 8;
                                                                                                                                                sb4.append(AbstractC1387m.m2421h(new byte[]{-74, 67, 16, 43, -89, -103}, new byte[]{-13, 17, 66, 100, -11, -71, -82, 117}));
                                                                                                                                                sb4.append(e.getClass().getSimpleName());
                                                                                                                                                c = 2;
                                                                                                                                                i10 = 8;
                                                                                                                                                sb4.append(AbstractC1387m.m2421h(new byte[]{109, 101}, new byte[]{87, 69, -103, -26, -12, -85, 19, 49}));
                                                                                                                                                sb4.append(String.valueOf(e.getMessage()).replace('\n', ' ').replace('\r', ' '));
                                                                                                                                                printWriter.println(sb4.toString());
                                                                                                                                                method5 = method5;
                                                                                                                                                str = str;
                                                                                                                                                str2 = str2;
                                                                                                                                                objInvoke = obj;
                                                                                                                                                i12 = 0;
                                                                                                                                            }
                                                                                                                                        } catch (Throwable th18) {
                                                                                                                                            th = th18;
                                                                                                                                            th = th;
                                                                                                                                            c = 2;
                                                                                                                                            i10 = 8;
                                                                                                                                            if (socketAccept != null) {
                                                                                                                                                socketAccept.close();
                                                                                                                                            }
                                                                                                                                            throw th;
                                                                                                                                        }
                                                                                                                                    } catch (Exception e13) {
                                                                                                                                        e = e13;
                                                                                                                                        obj = objInvoke;
                                                                                                                                        if (e instanceof InvocationTargetException) {
                                                                                                                                            if (e.getCause() != null) {
                                                                                                                                                e = e.getCause();
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        StringBuilder sb5 = new StringBuilder();
                                                                                                                                        i10 = 8;
                                                                                                                                        sb5.append(AbstractC1387m.m2421h(new byte[]{-74, 67, 16, 43, -89, -103}, new byte[]{-13, 17, 66, 100, -11, -71, -82, 117}));
                                                                                                                                        sb5.append(e.getClass().getSimpleName());
                                                                                                                                        c = 2;
                                                                                                                                        i10 = 8;
                                                                                                                                        sb5.append(AbstractC1387m.m2421h(new byte[]{109, 101}, new byte[]{87, 69, -103, -26, -12, -85, 19, 49}));
                                                                                                                                        sb5.append(String.valueOf(e.getMessage()).replace('\n', ' ').replace('\r', ' '));
                                                                                                                                        printWriter.println(sb5.toString());
                                                                                                                                        method5 = method5;
                                                                                                                                        str = str;
                                                                                                                                        str2 = str2;
                                                                                                                                        objInvoke = obj;
                                                                                                                                        i12 = 0;
                                                                                                                                    } catch (Throwable th19) {
                                                                                                                                        th = th19;
                                                                                                                                        obj = objInvoke;
                                                                                                                                        th = th;
                                                                                                                                        c = 2;
                                                                                                                                        i10 = 8;
                                                                                                                                        if (socketAccept != null) {
                                                                                                                                            socketAccept.close();
                                                                                                                                        }
                                                                                                                                        throw th;
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                str2 = str2;
                                                                                                                                obj = objInvoke;
                                                                                                                                int i18 = i12;
                                                                                                                                int i19 = i18;
                                                                                                                                while (i18 < 20) {
                                                                                                                                    int i20 = 1;
                                                                                                                                    for (Object obj2 : (List) method.invoke(objInvoke6, null)) {
                                                                                                                                        int i21 = i18;
                                                                                                                                        Method method6 = method;
                                                                                                                                        if (obj2.getClass().getField(AbstractC1387m.m2421h(new byte[]{47, 15, 79, 53, -103, -63, -34, -25, 47}, new byte[]{75, 102, 60, 69, -11, -96, -89, -82})).getInt(obj2) == i13) {
                                                                                                                                            try {
                                                                                                                                                field = obj2.getClass().getField(AbstractC1387m.m2421h(new byte[]{-42, 45, -34, -38, -31, 18, 62, 67, -34, 12, -45, -59}, new byte[]{-75, 69, -73, -74, -123, 70, 95, 48}));
                                                                                                                                            } catch (NoSuchFieldException unused4) {
                                                                                                                                                field = obj2.getClass().getField(AbstractC1387m.m2421h(new byte[]{48, 74, -86, ByteCompanionObject.MAX_VALUE, -110, 119, -81}, new byte[]{68, 43, -39, 20, -37, 19, -36, 16}));
                                                                                                                                            }
                                                                                                                                            if (((int[]) field.get(obj2)).length != 0) {
                                                                                                                                                i20 = i12;
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        i18 = i21;
                                                                                                                                        method = method6;
                                                                                                                                    }
                                                                                                                                    int i22 = i18;
                                                                                                                                    Method method7 = method;
                                                                                                                                    if (i20 != 0) {
                                                                                                                                        i19 = i20;
                                                                                                                                        break;
                                                                                                                                    }
                                                                                                                                    SystemClock.sleep(100L);
                                                                                                                                    i18 = i22 + 1;
                                                                                                                                    i19 = i20;
                                                                                                                                    method = method7;
                                                                                                                                }
                                                                                                                                if (i19 == 0) {
                                                                                                                                    throw new IllegalStateException(AbstractC1387m.m2421h(new byte[]{103, -44, 22, 29, 18, -37, Base64.padSymbol, 44, 86, -107, 22, 2, 8, -105, 48, 126, 67, -57, 0, 5, 4, -107, 40}, new byte[]{51, -75, 101, 118, 97, -5, 92, 94}));
                                                                                                                                }
                                                                                                                                printWriter.println(AbstractC1387m.m2421h(new byte[]{-108, -116}, new byte[]{-37, -57, -18, -17, -18, 94, -78, 95}));
                                                                                                                            } else {
                                                                                                                                str2 = str2;
                                                                                                                                obj = objInvoke;
                                                                                                                                printWriter.println(AbstractC1387m.m2421h(new byte[]{-116, -44, 60, 78, -86, -49, 7, -26, -94, -24, 1, 118, -106, -49, 49, -25, -92, -21, 15, 111, -100}, new byte[]{-55, -122, 110, 1, -8, -17, 82, -120}));
                                                                                                                            }
                                                                                                                        } catch (Exception e14) {
                                                                                                                            e = e14;
                                                                                                                            str2 = str2;
                                                                                                                            obj = objInvoke;
                                                                                                                            if (e instanceof InvocationTargetException) {
                                                                                                                                if (e.getCause() != null) {
                                                                                                                                    e = e.getCause();
                                                                                                                                }
                                                                                                                            }
                                                                                                                            StringBuilder sb6 = new StringBuilder();
                                                                                                                            i10 = 8;
                                                                                                                            sb6.append(AbstractC1387m.m2421h(new byte[]{-74, 67, 16, 43, -89, -103}, new byte[]{-13, 17, 66, 100, -11, -71, -82, 117}));
                                                                                                                            sb6.append(e.getClass().getSimpleName());
                                                                                                                            c = 2;
                                                                                                                            i10 = 8;
                                                                                                                            sb6.append(AbstractC1387m.m2421h(new byte[]{109, 101}, new byte[]{87, 69, -103, -26, -12, -85, 19, 49}));
                                                                                                                            sb6.append(String.valueOf(e.getMessage()).replace('\n', ' ').replace('\r', ' '));
                                                                                                                            printWriter.println(sb6.toString());
                                                                                                                            method5 = method5;
                                                                                                                            str = str;
                                                                                                                            str2 = str2;
                                                                                                                            objInvoke = obj;
                                                                                                                            i12 = 0;
                                                                                                                        }
                                                                                                                        method5 = method5;
                                                                                                                        str = str;
                                                                                                                        str2 = str2;
                                                                                                                        objInvoke = obj;
                                                                                                                        i12 = 0;
                                                                                                                    } catch (Throwable th20) {
                                                                                                                        th = th20;
                                                                                                                        str2 = str2;
                                                                                                                    }
                                                                                                                }
                                                                                                                if (socketAccept != null) {
                                                                                                                    socketAccept.close();
                                                                                                                }
                                                                                                                throw th;
                                                                                                            }
                                                                                                        } catch (Throwable th21) {
                                                                                                            th = th21;
                                                                                                            str2 = str2;
                                                                                                            obj = objInvoke;
                                                                                                        }
                                                                                                    } catch (Exception e15) {
                                                                                                        e = e15;
                                                                                                    }
                                                                                                } catch (Throwable th22) {
                                                                                                    th = th22;
                                                                                                    str2 = str2;
                                                                                                    obj = objInvoke;
                                                                                                    th = th;
                                                                                                    c = 2;
                                                                                                    i10 = 8;
                                                                                                    if (socketAccept != null) {
                                                                                                        socketAccept.close();
                                                                                                    }
                                                                                                    throw th;
                                                                                                }
                                                                                            } catch (Exception e16) {
                                                                                                e = e16;
                                                                                                str = str;
                                                                                                str2 = str2;
                                                                                                obj = objInvoke;
                                                                                                if (e instanceof InvocationTargetException) {
                                                                                                    if (e.getCause() != null) {
                                                                                                        e = e.getCause();
                                                                                                    }
                                                                                                }
                                                                                                StringBuilder sb7 = new StringBuilder();
                                                                                                i10 = 8;
                                                                                                sb7.append(AbstractC1387m.m2421h(new byte[]{-74, 67, 16, 43, -89, -103}, new byte[]{-13, 17, 66, 100, -11, -71, -82, 117}));
                                                                                                sb7.append(e.getClass().getSimpleName());
                                                                                                c = 2;
                                                                                                i10 = 8;
                                                                                                sb7.append(AbstractC1387m.m2421h(new byte[]{109, 101}, new byte[]{87, 69, -103, -26, -12, -85, 19, 49}));
                                                                                                sb7.append(String.valueOf(e.getMessage()).replace('\n', ' ').replace('\r', ' '));
                                                                                                printWriter.println(sb7.toString());
                                                                                                method5 = method5;
                                                                                                str = str;
                                                                                                str2 = str2;
                                                                                                objInvoke = obj;
                                                                                                i12 = 0;
                                                                                            } catch (Throwable th23) {
                                                                                                th = th23;
                                                                                                str = str;
                                                                                                str2 = str2;
                                                                                                obj = objInvoke;
                                                                                                th = th;
                                                                                                c = 2;
                                                                                                i10 = 8;
                                                                                                if (socketAccept != null) {
                                                                                                    socketAccept.close();
                                                                                                }
                                                                                                throw th;
                                                                                            }
                                                                                            th = th;
                                                                                            c = 2;
                                                                                            i10 = 8;
                                                                                            if (socketAccept != null) {
                                                                                                socketAccept.close();
                                                                                            }
                                                                                            throw th;
                                                                                            throw new SecurityException(AbstractC1387m.m2421h(new byte[]{106, -1, ByteCompanionObject.MAX_VALUE, 59, 58, -51, 98, 49, 81, -2, 104, 115, 62, -97, 46, 52, 77, -29, 123, 119, 58, -108}, new byte[]{36, -112, 11, 27, 91, -19, 14, 80}));
                                                                                        } catch (Exception e17) {
                                                                                            e = e17;
                                                                                            method5 = method5;
                                                                                            str = str;
                                                                                            str2 = str2;
                                                                                            obj = objInvoke;
                                                                                            if (e instanceof InvocationTargetException) {
                                                                                                if (e.getCause() != null) {
                                                                                                    e = e.getCause();
                                                                                                }
                                                                                            }
                                                                                            StringBuilder sb8 = new StringBuilder();
                                                                                            i10 = 8;
                                                                                            sb8.append(AbstractC1387m.m2421h(new byte[]{-74, 67, 16, 43, -89, -103}, new byte[]{-13, 17, 66, 100, -11, -71, -82, 117}));
                                                                                            sb8.append(e.getClass().getSimpleName());
                                                                                            c = 2;
                                                                                            i10 = 8;
                                                                                            sb8.append(AbstractC1387m.m2421h(new byte[]{109, 101}, new byte[]{87, 69, -103, -26, -12, -85, 19, 49}));
                                                                                            sb8.append(String.valueOf(e.getMessage()).replace('\n', ' ').replace('\r', ' '));
                                                                                            printWriter.println(sb8.toString());
                                                                                            method5 = method5;
                                                                                            str = str;
                                                                                            str2 = str2;
                                                                                            objInvoke = obj;
                                                                                            i12 = 0;
                                                                                        } catch (Throwable th24) {
                                                                                            th = th24;
                                                                                            method5 = method5;
                                                                                            str = str;
                                                                                            str2 = str2;
                                                                                            obj = objInvoke;
                                                                                        }
                                                                                    }
                                                                                } catch (Throwable th25) {
                                                                                    th = th25;
                                                                                    method5 = method5;
                                                                                }
                                                                            } catch (Exception e18) {
                                                                                e = e18;
                                                                                method5 = method5;
                                                                            }
                                                                        } catch (Throwable th26) {
                                                                            th = th26;
                                                                            method5 = method5;
                                                                            str = str;
                                                                        }
                                                                    } else {
                                                                        method5 = method5;
                                                                        str = str;
                                                                        str2 = str2;
                                                                        obj = objInvoke;
                                                                        c = 2;
                                                                        i10 = 8;
                                                                        try {
                                                                            socketAccept.close();
                                                                            break;
                                                                        } catch (Exception unused5) {
                                                                        }
                                                                    }
                                                                    c = 2;
                                                                    i10 = 8;
                                                                    th = th;
                                                                    if (socketAccept != null) {
                                                                        socketAccept.close();
                                                                    }
                                                                    throw th;
                                                                }
                                                            } catch (Throwable th27) {
                                                                th = th27;
                                                                i10 = 8;
                                                                obj = objInvoke;
                                                                c = 2;
                                                                th = th;
                                                                if (socketAccept != null) {
                                                                    socketAccept.close();
                                                                }
                                                                throw th;
                                                            }
                                                        } catch (Throwable th28) {
                                                            th = th28;
                                                        }
                                                    } else {
                                                        try {
                                                            socketAccept.close();
                                                            c10 = 2;
                                                            i11 = 8;
                                                        } catch (Exception unused6) {
                                                            method5 = method5;
                                                            str = str;
                                                            str2 = str2;
                                                            obj = objInvoke;
                                                            c = 2;
                                                            i10 = 8;
                                                            c10 = c;
                                                            i11 = i10;
                                                            method5 = method5;
                                                            str = str;
                                                            str2 = str2;
                                                            objInvoke = obj;
                                                            i12 = 0;
                                                        }
                                                    }
                                                    c10 = c;
                                                    i11 = i10;
                                                    method5 = method5;
                                                    str = str;
                                                    str2 = str2;
                                                    objInvoke = obj;
                                                    i12 = 0;
                                                } catch (Throwable th29) {
                                                    th = th29;
                                                    method5 = method5;
                                                    str = str;
                                                    str2 = str2;
                                                    obj = objInvoke;
                                                }
                                            } catch (Throwable th30) {
                                                th = th30;
                                                method5 = method5;
                                                str = str;
                                                str2 = str2;
                                                obj = objInvoke;
                                            }
                                        } catch (Throwable th31) {
                                            th = th31;
                                            i10 = 8;
                                        }
                                    } catch (Throwable th32) {
                                        th = th32;
                                    }
                                } catch (Throwable th33) {
                                    th = th33;
                                    method5 = method5;
                                    str = str;
                                    str2 = str2;
                                    obj = objInvoke;
                                }
                            } catch (Throwable th34) {
                                th = th34;
                                i10 = i11;
                            }
                        } catch (Throwable th35) {
                            th = th35;
                            method5 = method5;
                            str = str;
                            str2 = str2;
                            i10 = i11;
                            obj = objInvoke;
                            c = c10;
                        }
                    } catch (Exception unused7) {
                        method5 = method5;
                        str = str;
                        str2 = str2;
                        i10 = i11;
                        obj = objInvoke;
                        c = c10;
                    }
                } catch (Throwable th36) {
                    try {
                        serverSocket.close();
                        throw th36;
                    } catch (Throwable th37) {
                        th36.addSuppressed(th37);
                        throw th36;
                    }
                }
            }
            throw new SecurityException(AbstractC1387m.m2421h(new byte[]{106, -1, ByteCompanionObject.MAX_VALUE, 59, 58, -51, 98, 49, 81, -2, 104, 115, 62, -97, 46, 52, 77, -29, 123, 119, 58, -108}, new byte[]{36, -112, 11, 27, 91, -19, 14, 80}));
        }
    }
}
