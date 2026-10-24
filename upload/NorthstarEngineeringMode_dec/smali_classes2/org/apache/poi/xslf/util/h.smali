.class public final synthetic Lorg/apache/poi/xslf/util/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/xslf/util/h;->a:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/xslf/util/h;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/xslf/util/PPTX2PNG;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    check-cast p1, Lorg/apache/poi/sl/usermodel/Shape;

    invoke-static {p1}, Lorg/apache/poi/xslf/util/PPTHandler;->a(Lorg/apache/poi/sl/usermodel/Shape;)Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
