.class public final synthetic Lo0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lo0/d;


# direct methods
.method public synthetic constructor <init>(Lo0/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lo0/a;->a:I

    iput-object p1, p0, Lo0/a;->b:Lo0/d;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p0, Lo0/a;->a:I

    const/4 v1, 0x1

    iget-object p0, p0, Lo0/a;->b:Lo0/d;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lo0/d;->b(Lo0/d;Landroid/os/Message;)V

    return v1

    :pswitch_0
    invoke-static {p0, p1}, Lo0/d;->a(Lo0/d;Landroid/os/Message;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
