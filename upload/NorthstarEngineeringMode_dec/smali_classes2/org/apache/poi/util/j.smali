.class public final synthetic Lorg/apache/poi/util/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[Ljava/lang/Enum;

.field public final synthetic c:Ljava/lang/Enum;


# direct methods
.method public synthetic constructor <init>(I[Ljava/lang/Enum;Ljava/lang/Enum;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/util/j;->a:I

    iput-object p2, p0, Lorg/apache/poi/util/j;->b:[Ljava/lang/Enum;

    iput-object p3, p0, Lorg/apache/poi/util/j;->c:Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/util/j;->b:[Ljava/lang/Enum;

    iget-object v1, p0, Lorg/apache/poi/util/j;->c:Ljava/lang/Enum;

    iget p0, p0, Lorg/apache/poi/util/j;->a:I

    invoke-static {p0, v0, v1}, Lorg/apache/poi/util/GenericRecordUtil;->c(I[Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method
