.class public final synthetic Lmega/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Lmega/widget/BlurHelper;


# direct methods
.method public synthetic constructor <init>(Lmega/widget/BlurHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/widget/a;->a:Lmega/widget/BlurHelper;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 0

    iget-object p0, p0, Lmega/widget/a;->a:Lmega/widget/BlurHelper;

    invoke-static {p0}, Lmega/widget/BlurHelper;->a(Lmega/widget/BlurHelper;)V

    return-void
.end method
