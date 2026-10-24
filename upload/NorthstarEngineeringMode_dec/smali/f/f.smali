.class public final synthetic Lf/f;
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

    iput p1, p0, Lf/f;->a:I

    iput-object p2, p0, Lf/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lf/f;->a:I

    iget-object p0, p0, Lf/f;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;->a([B[B)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lorg/apache/poi/ddf/EscherProperty;

    check-cast p1, Lorg/apache/poi/ddf/EscherProperty;

    invoke-static {p0, p1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->c(Lorg/apache/poi/ddf/EscherProperty;Lorg/apache/poi/ddf/EscherProperty;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/u0;->a:Lorg/apache/commons/compress/archivers/zip/o;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p0, Lf/d;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, p1}, Lf/d;->m(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
