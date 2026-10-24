.class public final synthetic Lmega/car/hardware/property/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic x:Ljava/lang/Object;

.field public final synthetic y:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lmega/car/hardware/property/a;->c:I

    iput-object p1, p0, Lmega/car/hardware/property/a;->r:Ljava/lang/Object;

    iput-object p2, p0, Lmega/car/hardware/property/a;->x:Ljava/lang/Object;

    iput-object p4, p0, Lmega/car/hardware/property/a;->y:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lmega/car/hardware/property/a;->c:I

    iget-object v1, p0, Lmega/car/hardware/property/a;->y:Ljava/lang/Object;

    iget-object v2, p0, Lmega/car/hardware/property/a;->x:Ljava/lang/Object;

    iget-object p0, p0, Lmega/car/hardware/property/a;->r:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lm5/y;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lm5/y;->i2(Ljava/lang/String;)V

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget-object v0, v0, Lm5/h;->a:Lm5/z0;

    iget-object v0, v0, Lm5/z0;->s:Lm5/z0$c;

    iget-object v0, v0, Lm5/z0$c;->a:Li5/j;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Li5/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lm5/y;->S0(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0}, Lm5/y;->S1()Li5/p0$a;

    return-void

    :pswitch_0
    check-cast p0, Lm5/y;

    check-cast v2, Ljavax/xml/namespace/QName;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lm5/y;->K0(Ljava/lang/String;Ljavax/xml/namespace/QName;)V

    return-void

    :pswitch_1
    check-cast p0, Lmega/car/hardware/property/CarPropertyManager;

    check-cast v2, Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    check-cast v1, Landroid/util/SparseArray;

    invoke-static {p0, v2, v1}, Lmega/car/hardware/property/CarPropertyManager;->a(Lmega/car/hardware/property/CarPropertyManager;Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Landroid/util/SparseArray;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
