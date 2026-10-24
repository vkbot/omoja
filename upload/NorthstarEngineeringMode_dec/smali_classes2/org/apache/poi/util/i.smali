.class public final synthetic Lorg/apache/poi/util/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/io/Serializable;

.field public final synthetic d:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lorg/apache/poi/util/i;->a:I

    iput-object p1, p0, Lorg/apache/poi/util/i;->b:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/poi/util/i;->c:Ljava/io/Serializable;

    iput-object p3, p0, Lorg/apache/poi/util/i;->d:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lorg/apache/poi/util/i;->a:I

    iget-object v1, p0, Lorg/apache/poi/util/i;->d:Ljava/io/Serializable;

    iget-object v2, p0, Lorg/apache/poi/util/i;->c:Ljava/io/Serializable;

    iget-object p0, p0, Lorg/apache/poi/util/i;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lm5/y;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lm5/y;->i2(Ljava/lang/String;)V

    iget-object v0, p0, Lm5/y;->c:Lm5/h;

    iget-object v0, v0, Lm5/h;->a:Lm5/z0;

    iget-object v0, v0, Lm5/z0;->s:Lm5/z0$c;

    iget-object v0, v0, Lm5/z0$c;->a:Li5/j;

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Li5/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lm5/y;->R1(ILjavax/xml/namespace/QName;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ljava/util/function/Supplier;

    check-cast v2, [I

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->d(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Ljava/util/function/Supplier;

    check-cast v2, [I

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->b(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
