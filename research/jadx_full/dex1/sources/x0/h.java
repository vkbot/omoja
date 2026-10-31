package x0;

import android.widget.TextView;
import com.example.navistart.SuperWidgets.WidgetBuilderFragment;
import java.util.ArrayList;
import java.util.function.IntConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class h implements IntConsumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WidgetBuilderFragment f5986b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h(WidgetBuilderFragment widgetBuilderFragment, Object obj, int i9) {
        this.f5985a = i9;
        this.f5986b = widgetBuilderFragment;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.IntConsumer
    public final void accept(int i9) {
        switch (this.f5985a) {
            case 0:
                WidgetBuilderFragment.z(this.f5986b, (TextView) this.c, i9);
                break;
            case 1:
                WidgetBuilderFragment.Z(this.f5986b, (TextView) this.c, i9);
                break;
            case 2:
                WidgetBuilderFragment.B(this.f5986b, (TextView) this.c, i9);
                break;
            case 3:
                WidgetBuilderFragment.K(this.f5986b, (TextView) this.c, i9);
                break;
            case 4:
                WidgetBuilderFragment.I(this.f5986b, (TextView) this.c, i9);
                break;
            default:
                WidgetBuilderFragment.U(this.f5986b, (ArrayList) this.c, i9);
                break;
        }
    }
}
