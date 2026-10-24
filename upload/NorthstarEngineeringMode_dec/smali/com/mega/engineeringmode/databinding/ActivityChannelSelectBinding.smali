.class public abstract Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic x:I


# instance fields
.field public final c:Landroidx/appcompat/widget/AppCompatSpinner;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final r:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroidx/appcompat/widget/AppCompatSpinner;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p3, p0, Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBinding;->c:Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object p4, p0, Lcom/mega/engineeringmode/databinding/ActivityChannelSelectBinding;->r:Landroid/widget/TextView;

    return-void
.end method
