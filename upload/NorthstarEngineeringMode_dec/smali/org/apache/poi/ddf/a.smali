.class public final synthetic Lorg/apache/poi/ddf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ddf/a;->a:I

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/ddf/a;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    const/4 p0, 0x3

    invoke-static {p0, p1}, Ld/f;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string p1, "*"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0

    :catch_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    const-string p1, "Malformed integer in SOAP array index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->getSid()S

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lorg/apache/poi/ddf/EscherProperty;

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
