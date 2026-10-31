package p4;

import android.text.TextUtils;
import f5.b0;
import java.text.ParseException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k5.b f4590a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Integer f4591b = null;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(k5.b bVar) {
        this.f4590a = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(b bVar) throws a {
        k5.b bVar2 = this.f4590a;
        if (bVar2.get() == null) {
            throw new a("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
        }
        String[] strArr = b.f4585g;
        b.b(bVar.a());
        ArrayList arrayList = new ArrayList();
        HashMap mapA = bVar.a();
        mapA.remove("triggerEvent");
        b.b(mapA);
        try {
            arrayList.add(new b((String) mapA.get("experimentId"), (String) mapA.get("variantId"), mapA.containsKey("triggerEvent") ? (String) mapA.get("triggerEvent") : "", b.f4586h.parse((String) mapA.get("experimentStartTime")), Long.parseLong((String) mapA.get("triggerTimeoutMillis")), Long.parseLong((String) mapA.get("timeToLiveMillis"))));
            ((b0) bVar2.get()).getClass();
            ArrayDeque arrayDeque = new ArrayDeque(Collections.EMPTY_LIST);
            int i9 = 0;
            if (this.f4591b == null) {
                ((b0) bVar2.get()).getClass();
                this.f4591b = 0;
            }
            int iIntValue = this.f4591b.intValue();
            int size = arrayList.size();
            while (i9 < size) {
                Object obj = arrayList.get(i9);
                i9++;
                b bVar3 = (b) obj;
                while (arrayDeque.size() >= iIntValue) {
                    String str = ((r4.a) arrayDeque.pollFirst()).f4982a;
                    ((b0) bVar2.get()).getClass();
                }
                r4.a aVar = new r4.a();
                bVar3.d.getTime();
                aVar.f4982a = bVar3.f4587a;
                TextUtils.isEmpty(bVar3.c);
                ((b0) bVar2.get()).getClass();
                arrayDeque.offer(aVar);
            }
        } catch (NumberFormatException e) {
            throw new a("Could not process experiment: one of the durations could not be converted into a long.", e);
        } catch (ParseException e6) {
            throw new a("Could not process experiment: parsing experiment start time failed.", e6);
        }
    }
}
