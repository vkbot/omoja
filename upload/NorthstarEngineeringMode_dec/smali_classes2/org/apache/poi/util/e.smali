.class public final synthetic Lorg/apache/poi/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/util/e;->a:I

    iput-object p2, p0, Lorg/apache/poi/util/e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/util/e;->a:I

    iget-object p0, p0, Lorg/apache/poi/util/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/util/GenericRecordJsonWriter;

    check-cast p1, Lorg/apache/poi/common/usermodel/GenericRecord;

    invoke-static {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->d(Lorg/apache/poi/util/GenericRecordJsonWriter;Lorg/apache/poi/common/usermodel/GenericRecord;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lorg/apache/poi/util/GenericRecordJsonWriter;->b(Ljava/lang/Object;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
