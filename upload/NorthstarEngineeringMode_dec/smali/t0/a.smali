.class public final synthetic Lt0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt0/a;->a:I

    iput-object p2, p0, Lt0/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lt0/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lt0/a;->a:I

    iget-object v1, p0, Lt0/a;->c:Ljava/lang/Object;

    iget-object p0, p0, Lt0/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Lm5/o0$a;

    invoke-static {p0, p1}, Lm5/o0;->y(Ljava/lang/String;Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lm5/o0;->N(Lm5/o0$a;)Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lm5/o0$a;

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lm5/o0;->C(Ljava/lang/String;Lm5/o0$a;)Lm5/b;

    move-result-object v0

    invoke-static {p1, v0}, Lm5/o0;->A(Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    new-instance p0, Lm5/o0$m;

    const-string p1, "Document element can\'t be determined."

    invoke-direct {p0, p1}, Lm5/o0$m;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    check-cast v0, Lm5/o0$a;

    invoke-static {v1, v0}, Lm5/o0;->S(Ljava/lang/String;Lm5/o0$a;)V

    return-void

    :pswitch_1
    check-cast p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    check-cast v1, Ljava/util/Map;

    check-cast p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;

    invoke-static {p0, v1, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->c(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Ljava/util/Map;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)V

    return-void

    :pswitch_2
    check-cast p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;

    check-cast v1, Ljava/util/BitSet;

    check-cast p1, Lorg/apache/poi/sl/usermodel/Slide;

    invoke-static {p0, v1, p1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->b(Lorg/apache/poi/sl/extractor/SlideShowExtractor;Ljava/util/BitSet;Lorg/apache/poi/sl/usermodel/Slide;)V

    return-void

    :pswitch_3
    check-cast p0, Ljava/lang/String;

    check-cast p1, Lt0/c$a;

    iget-object v0, p1, Lt0/c$a;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, v1}, Lt0/c$a;->a(Ljava/lang/Object;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
