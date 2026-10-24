.class public final synthetic Lorg/apache/poi/util/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/util/GenericRecordXmlWriter$GenericRecordHandler;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/util/u;->a:I

    return-void
.end method


# virtual methods
.method public final print(Lorg/apache/poi/util/GenericRecordXmlWriter;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lorg/apache/poi/util/u;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/util/GenericRecordXmlWriter;->printPath(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/util/GenericRecordXmlWriter;->printPoint(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/util/GenericRecordXmlWriter;->printList(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_2
    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/util/GenericRecordXmlWriter;->printObject(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_3
    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/util/GenericRecordXmlWriter;->printColor(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
