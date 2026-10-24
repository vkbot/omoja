.class public final synthetic Lorg/apache/poi/xslf/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lorg/apache/poi/sl/usermodel/ObjectData;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/sl/usermodel/ObjectData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/util/e;->a:Lorg/apache/poi/sl/usermodel/ObjectData;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/e;->a:Lorg/apache/poi/sl/usermodel/ObjectData;

    invoke-static {p0}, Lorg/apache/poi/xslf/util/PPTHandler;->c(Lorg/apache/poi/sl/usermodel/ObjectData;)[B

    move-result-object p0

    return-object p0
.end method
