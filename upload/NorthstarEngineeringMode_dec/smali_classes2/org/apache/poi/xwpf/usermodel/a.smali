.class public final synthetic Lorg/apache/poi/xwpf/usermodel/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/xwpf/usermodel/a;->a:I

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/a;->b:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/xwpf/usermodel/a;->a:I

    iget-object p0, p0, Lorg/apache/poi/xwpf/usermodel/a;->b:Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    check-cast p1, Li5/p0;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->d(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Li5/p0;)Lorg/apache/poi/xwpf/usermodel/XWPFHyperlinkRun;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;->b(Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;Li5/p0;)Lorg/apache/poi/xwpf/usermodel/XWPFRun;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
