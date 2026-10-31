package androidx.constraintlayout.core.widgets.analyzer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class BaselineDimensionDependency extends DimensionDependency {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BaselineDimensionDependency(WidgetRun widgetRun) {
        super(widgetRun);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void update(DependencyNode dependencyNode) {
        WidgetRun widgetRun = this.mRun;
        ((VerticalWidgetRun) widgetRun).baseline.mMargin = widgetRun.mWidget.getBaselineDistance();
        this.resolved = true;
    }
}
