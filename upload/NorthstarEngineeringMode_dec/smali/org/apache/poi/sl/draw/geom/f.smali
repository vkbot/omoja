.class public final synthetic Lorg/apache/poi/sl/draw/geom/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/draw/geom/PresetParser$Mode$Handler;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/sl/draw/geom/f;->a:I

    return-void
.end method


# virtual methods
.method public final update(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    iget p0, p0, Lorg/apache/poi/sl/draw/geom/f;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->h(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    return-void

    :pswitch_0
    invoke-static {p1, p2}, Lorg/apache/poi/sl/draw/geom/PresetParser$Mode;->d(Lorg/apache/poi/sl/draw/geom/PresetParser;Ljavax/xml/stream/XMLStreamReader;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
