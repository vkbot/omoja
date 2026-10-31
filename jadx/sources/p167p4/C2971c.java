package p167p4;

import android.text.TextUtils;
import java.text.ParseException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import p062f5.C1541b0;
import p114k5.InterfaceC2050b;
import p183r4.C3102a;

/* JADX INFO: renamed from: p4.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2971c {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2050b f8266a;

    /* JADX INFO: renamed from: b */
    public Integer f8267b = null;

    public C2971c(InterfaceC2050b interfaceC2050b) {
        this.f8266a = interfaceC2050b;
    }

    /* JADX INFO: renamed from: a */
    public final void m4758a(C2970b c2970b) throws C2969a {
        InterfaceC2050b interfaceC2050b = this.f8266a;
        if (interfaceC2050b.get() == null) {
            throw new C2969a("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
        }
        String[] strArr = C2970b.f8258g;
        C2970b.m4756b(c2970b.m4757a());
        ArrayList arrayList = new ArrayList();
        HashMap mapM4757a = c2970b.m4757a();
        mapM4757a.remove("triggerEvent");
        C2970b.m4756b(mapM4757a);
        try {
            arrayList.add(new C2970b((String) mapM4757a.get("experimentId"), (String) mapM4757a.get("variantId"), mapM4757a.containsKey("triggerEvent") ? (String) mapM4757a.get("triggerEvent") : "", C2970b.f8259h.parse((String) mapM4757a.get("experimentStartTime")), Long.parseLong((String) mapM4757a.get("triggerTimeoutMillis")), Long.parseLong((String) mapM4757a.get("timeToLiveMillis"))));
            ((C1541b0) interfaceC2050b.get()).getClass();
            ArrayDeque arrayDeque = new ArrayDeque(Collections.EMPTY_LIST);
            int i10 = 0;
            if (this.f8267b == null) {
                ((C1541b0) interfaceC2050b.get()).getClass();
                this.f8267b = 0;
            }
            int iIntValue = this.f8267b.intValue();
            int size = arrayList.size();
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                C2970b c2970b2 = (C2970b) obj;
                while (arrayDeque.size() >= iIntValue) {
                    String str = ((C3102a) arrayDeque.pollFirst()).f8860a;
                    ((C1541b0) interfaceC2050b.get()).getClass();
                }
                C3102a c3102a = new C3102a();
                c2970b2.f8263d.getTime();
                c3102a.f8860a = c2970b2.f8260a;
                TextUtils.isEmpty(c2970b2.f8262c);
                ((C1541b0) interfaceC2050b.get()).getClass();
                arrayDeque.offer(c3102a);
            }
        } catch (NumberFormatException e) {
            throw new C2969a("Could not process experiment: one of the durations could not be converted into a long.", e);
        } catch (ParseException e6) {
            throw new C2969a("Could not process experiment: parsing experiment start time failed.", e6);
        }
    }
}
