.class public final synthetic Lorg/apache/poi/extractor/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/extractor/d;->a:I

    iput-object p1, p0, Lorg/apache/poi/extractor/d;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/extractor/d;->a:I

    iget-object p0, p0, Lorg/apache/poi/extractor/d;->b:Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lorg/apache/poi/ss/usermodel/WorkbookProvider;

    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/WorkbookFactory;->f(Ljava/lang/Class;Lorg/apache/poi/ss/usermodel/WorkbookProvider;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lorg/apache/poi/sl/usermodel/SlideShowProvider;

    invoke-static {p0, p1}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->d(Ljava/lang/Class;Lorg/apache/poi/sl/usermodel/SlideShowProvider;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lorg/apache/poi/extractor/ExtractorProvider;

    invoke-static {p0, p1}, Lorg/apache/poi/extractor/ExtractorFactory;->e(Ljava/lang/Class;Lorg/apache/poi/extractor/ExtractorProvider;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
