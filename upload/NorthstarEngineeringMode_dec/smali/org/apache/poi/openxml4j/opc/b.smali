.class public final synthetic Lorg/apache/poi/openxml4j/opc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:Ljava/util/regex/Pattern;


# direct methods
.method public synthetic constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/b;->a:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/b;->a:Ljava/util/regex/Pattern;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/poi/openxml4j/opc/PackagePartCollection;->b(Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
