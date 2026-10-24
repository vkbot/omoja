.class public Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$OnItemClickListener;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mListener:Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$OnItemClickListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$OnItemClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;->mListener:Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$OnItemClickListener;

    new-instance p3, Landroid/view/GestureDetector;

    new-instance v0, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$1;

    invoke-direct {v0, p0, p2}, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$1;-><init>(Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p3, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public static synthetic access$000(Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;)Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;->mListener:Lmega/widget/recyclerview/RecyclerViewOnItemClickListener$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public setLongPressEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lmega/widget/recyclerview/RecyclerViewOnItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method
