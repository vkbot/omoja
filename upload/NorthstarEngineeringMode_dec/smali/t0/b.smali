.class public final synthetic Lt0/b;
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

    iput p1, p0, Lt0/b;->a:I

    iput-object p2, p0, Lt0/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lt0/b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lt0/b;->a:I

    iget-object v1, p0, Lt0/b;->c:Ljava/lang/Object;

    iget-object p0, p0, Lt0/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;

    check-cast v1, Ljava/util/Map;

    check-cast p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;

    invoke-static {p0, v1, p1}, Lorg/apache/poi/xslf/usermodel/XMLSlideShow;->a(Lorg/apache/poi/xslf/usermodel/XMLSlideShow;Ljava/util/Map;Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterIdListEntry;)V

    return-void

    :pswitch_0
    check-cast p0, Lorg/apache/poi/sl/extractor/SlideShowExtractor;

    check-cast v1, Le3/a;

    check-cast p1, Lorg/apache/poi/sl/usermodel/Slide;

    invoke-static {p0, v1, p1}, Lorg/apache/poi/sl/extractor/SlideShowExtractor;->e(Lorg/apache/poi/sl/extractor/SlideShowExtractor;Le3/a;Lorg/apache/poi/sl/usermodel/Slide;)V

    return-void

    :pswitch_1
    check-cast p0, Lorg/apache/poi/hssf/record/EscherAggregate;

    check-cast v1, Ljava/util/Iterator;

    check-cast p1, Lorg/apache/poi/hssf/record/Record;

    invoke-static {p0, v1, p1}, Lorg/apache/poi/hssf/record/EscherAggregate;->a(Lorg/apache/poi/hssf/record/EscherAggregate;Ljava/util/Iterator;Lorg/apache/poi/hssf/record/Record;)V

    return-void

    :pswitch_2
    check-cast p0, Lf5/d;

    check-cast v1, Lf5/b;

    check-cast p1, Lf5/c;

    sget-object v0, Lf5/d;->p1:La5/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lf5/c;->h1()La5/a;

    move-result-object v0

    iget-object v2, v1, Lf5/b;->x:La5/a;

    iget-object p0, p0, Lf5/d;->k1:Lf5/d$a;

    iget-boolean p0, p0, Lf5/d$a;->a:Z

    if-nez p0, :cond_0

    iget p0, v0, La5/a;->r:I

    iget v0, v2, La5/a;->r:I

    if-lt p0, v0, :cond_1

    :cond_0
    invoke-interface {p1, v1}, Lf5/c;->M0(Lf5/b;)V

    :cond_1
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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
