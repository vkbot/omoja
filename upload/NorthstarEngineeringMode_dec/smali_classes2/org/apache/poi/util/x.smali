.class public final synthetic Lorg/apache/poi/util/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/util/x;->c:I

    return-void
.end method


# virtual methods
.method public final resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0

    iget p0, p0, Lorg/apache/poi/util/x;->c:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lj5/k;->a:Le5/g;

    new-instance p0, Lorg/xml/sax/InputSource;

    new-instance p1, Ljava/io/StringReader;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    return-object p0

    :pswitch_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/XMLHelper;->d(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
