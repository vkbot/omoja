.class public final synthetic Lorg/apache/poi/util/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/util/l;->a:Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

    iput p2, p0, Lorg/apache/poi/util/l;->b:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/util/l;->b:I

    check-cast p1, Ljava/util/Map$Entry;

    iget-object p0, p0, Lorg/apache/poi/util/l;->a:Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;->a(Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;ILjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
