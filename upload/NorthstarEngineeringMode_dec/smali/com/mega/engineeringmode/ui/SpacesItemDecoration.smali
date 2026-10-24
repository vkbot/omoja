.class public Lcom/mega/engineeringmode/ui/SpacesItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/mega/engineeringmode/ui/SpacesItemDecoration;->a:I

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    iget p0, p0, Lcom/mega/engineeringmode/ui/SpacesItemDecoration;->a:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
