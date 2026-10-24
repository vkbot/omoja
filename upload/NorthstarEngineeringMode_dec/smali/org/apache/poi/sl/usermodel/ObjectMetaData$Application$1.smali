.class Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/ObjectMetaData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->getMetaData()Lorg/apache/poi/sl/usermodel/ObjectMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application$1;->this$0:Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassID()Lorg/apache/poi/hpsf/ClassID;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application$1;->this$0:Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->classId:Lorg/apache/poi/hpsf/ClassID;

    return-object p0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application$1;->this$0:Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->objectName:Ljava/lang/String;

    return-object p0
.end method

.method public getOleEntry()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application$1;->this$0:Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->oleEntry:Ljava/lang/String;

    return-object p0
.end method

.method public getProgId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application$1;->this$0:Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/ObjectMetaData$Application;->progId:Ljava/lang/String;

    return-object p0
.end method
