package androidx.constraintlayout.core.widgets.analyzer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class DimensionDependency extends DependencyNode {
    public int wrapValue;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DimensionDependency(WidgetRun widgetRun) {
        super(widgetRun);
        if (widgetRun instanceof HorizontalWidgetRun) {
            this.mType = DependencyNode$Type.HORIZONTAL_DIMENSION;
        } else {
            this.mType = DependencyNode$Type.VERTICAL_DIMENSION;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.analyzer.DependencyNode
    public void resolve(int i9) {
        if (this.resolved) {
            return;
        }
        this.resolved = true;
        this.value = i9;
        for (Dependency dependency : this.mDependencies) {
            dependency.update(dependency);
        }
    }
}
