.class public final Landroidx/appcompat/widget/p2;
.super Landroidx/emoji2/text/g;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/p2;->a:I

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/text/g;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/widget/p2;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/p2;->a:I

    .line 3
    invoke-direct {p0}, Landroidx/emoji2/text/g;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/widget/p2;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/p2;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/p2;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->d()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/p2;->b:Ljava/lang/ref/WeakReference;

    iget p0, p0, Landroidx/appcompat/widget/p2;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->d()V

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lo0/j;->a(Landroid/widget/EditText;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
