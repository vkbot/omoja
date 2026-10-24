.class public final synthetic Lorg/apache/commons/compress/archivers/zip/n0;
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

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/n0;->a:I

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/n0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/n0;->a:I

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/n0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-static {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->c(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHyperlink;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;

    check-cast p1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    invoke-static {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->a(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSimpleField;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p0, Ljava/lang/Class;

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/v0;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

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
