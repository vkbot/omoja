.class Lorg/apache/poi/xslf/util/PPTHandler$1;
.super Ljava/util/Spliterators$AbstractSpliterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xslf/util/PPTHandler;->slideIndexes(Ljava/lang/String;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Spliterators$AbstractSpliterator<",
        "Ljava/util/regex/Matcher;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xslf/util/PPTHandler;

.field final synthetic val$matcher:Ljava/util/regex/Matcher;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xslf/util/PPTHandler;JILjava/util/regex/Matcher;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/util/PPTHandler$1;->this$0:Lorg/apache/poi/xslf/util/PPTHandler;

    iput-object p5, p0, Lorg/apache/poi/xslf/util/PPTHandler$1;->val$matcher:Ljava/util/regex/Matcher;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/regex/Matcher;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xslf/util/PPTHandler$1;->val$matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PPTHandler$1;->val$matcher:Ljava/util/regex/Matcher;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return v0
.end method
