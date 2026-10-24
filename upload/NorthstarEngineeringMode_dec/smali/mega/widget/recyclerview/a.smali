.class public final synthetic Lmega/widget/recyclerview/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmega/widget/recyclerview/FlexibleDividerDecoration$VisibilityProvider;


# instance fields
.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lmega/widget/recyclerview/a;->c:Z

    return-void
.end method


# virtual methods
.method public final shouldHideDivider(ILandroidx/recyclerview/widget/RecyclerView;Z)Z
    .locals 0

    iget-boolean p0, p0, Lmega/widget/recyclerview/a;->c:Z

    invoke-static {p0, p1, p2, p3}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->f(ZILandroidx/recyclerview/widget/RecyclerView;Z)Z

    move-result p0

    return p0
.end method
