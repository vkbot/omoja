.class interface abstract Landroidx/recyclerview/widget/ViewTypeStorage;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;,
        Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;,
        Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;
    }
.end annotation


# virtual methods
.method public abstract createViewTypeWrapper(Landroidx/recyclerview/widget/NestedAdapterWrapper;)Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;
    .param p1    # Landroidx/recyclerview/widget/NestedAdapterWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getWrapperForGlobalType(I)Landroidx/recyclerview/widget/NestedAdapterWrapper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
