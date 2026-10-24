.class public final synthetic Lorg/apache/commons/compress/archivers/zip/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/z0;->a:I

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/z0;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getLongValue()J

    move-result-wide p0

    return-wide p0

    :pswitch_0
    check-cast p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;->getId()J

    move-result-wide p0

    return-wide p0

    :pswitch_1
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/o0;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/o0;->getLocalHeaderOffset()J

    move-result-wide p0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
