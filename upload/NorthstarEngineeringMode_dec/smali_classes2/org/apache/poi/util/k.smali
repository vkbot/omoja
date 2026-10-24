.class public final synthetic Lorg/apache/poi/util/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Ljava/util/function/Supplier;

.field public final synthetic b:[I

.field public final synthetic c:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;[I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/util/k;->a:Ljava/util/function/Supplier;

    iput-object p2, p0, Lorg/apache/poi/util/k;->b:[I

    iput-object p3, p0, Lorg/apache/poi/util/k;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/util/k;->b:[I

    iget-object v1, p0, Lorg/apache/poi/util/k;->c:[Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/poi/util/k;->a:Ljava/util/function/Supplier;

    invoke-static {p0, v0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->a(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

    move-result-object p0

    return-object p0
.end method
