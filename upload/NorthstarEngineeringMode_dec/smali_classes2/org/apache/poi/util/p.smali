.class public final synthetic Lorg/apache/poi/util/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/util/GenericRecordXmlWriter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/util/GenericRecordXmlWriter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/util/p;->a:I

    iput-object p1, p0, Lorg/apache/poi/util/p;->b:Lorg/apache/poi/util/GenericRecordXmlWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/util/p;->a:I

    iget-object p0, p0, Lorg/apache/poi/util/p;->b:Lorg/apache/poi/util/GenericRecordXmlWriter;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->c(Lorg/apache/poi/util/GenericRecordXmlWriter;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->writeProp(Ljava/util/Map$Entry;)Ljava/util/stream/Stream;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
