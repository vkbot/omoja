.class public final Lmega/config/XmlData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final TAG_COLLECTION_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_DATA:Ljava/lang/String; = "data"

.field private static final TAG_DATA_ARRAY:Ljava/lang/String; = "data-array"

.field private static final TAG_STRING:Ljava/lang/String; = "string"

.field private static final TAG_STRING_ARRAY:Ljava/lang/String; = "string-array"


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lmega/config/XmlData;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmega/config/XmlData;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public static create(Lorg/xmlpull/v1/XmlPullParser;)Lmega/config/XmlData;
    .locals 10

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    new-instance v1, Lmega/config/XmlData;

    invoke-direct {v1}, Lmega/config/XmlData;-><init>()V

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_7

    :cond_0
    if-ne v2, v4, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    :cond_2
    const-string v5, "name"

    const/4 v6, 0x0

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    sparse-switch v7, :sswitch_data_0

    :goto_1
    move v3, v9

    goto :goto_2

    :sswitch_0
    const-string v3, "data-array"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    :sswitch_1
    const-string v3, "data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    goto :goto_2

    :sswitch_2
    const-string/jumbo v4, "string"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "string-array"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move v3, v8

    :cond_6
    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    invoke-static {p0, v2, v3}, Lmega/config/XmlData;->parseXmlDataArray(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;I)V

    new-array v3, v8, [Lmega/config/XmlData;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmega/config/XmlData;

    invoke-virtual {v1, v5, v2}, Lmega/config/XmlData;->putXmlDataArray(Ljava/lang/String;[Lmega/config/XmlData;)V

    goto :goto_3

    :pswitch_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {p0}, Lmega/config/XmlData;->create(Lorg/xmlpull/v1/XmlPullParser;)Lmega/config/XmlData;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lmega/config/XmlData;->putXmlData(Ljava/lang/String;Lmega/config/XmlData;)V

    goto :goto_3

    :pswitch_2
    const-string/jumbo v2, "value"

    invoke-interface {p0, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lmega/config/XmlData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    invoke-static {p0, v2, v3}, Lmega/config/XmlData;->parseStringArray(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;I)V

    new-array v3, v8, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Lmega/config/XmlData;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto/16 :goto_0

    :cond_7
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3d122a63 -> :sswitch_3
        -0x352a9fef -> :sswitch_2
        0x2eefaa -> :sswitch_1
        0xa398e76 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getMapFromBundle(Landroid/os/BaseBundle;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BaseBundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/os/BaseBundle;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string/jumbo v2, "unparcel"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mMap"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error in getMapFromBundle! "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "XmlData"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static parseStringArray(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, p2, :cond_3

    :cond_1
    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static parseXmlDataArray(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lmega/config/XmlData;",
            ">;I)V"
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, p2, :cond_3

    :cond_1
    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {p0}, Lmega/config/XmlData;->create(Lorg/xmlpull/v1/XmlPullParser;)Lmega/config/XmlData;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static write(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V
    .locals 7

    .line 2
    invoke-static {p1}, Lmega/config/XmlData;->getMapFromBundle(Landroid/os/BaseBundle;)Ljava/util/Map;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v2, v0, Ljava/lang/String;

    const-string v3, "name"

    const-string/jumbo v4, "string"

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    invoke-interface {p0, v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "value"

    .line 9
    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v5, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 10
    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 11
    :cond_1
    instance-of v2, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    const-string/jumbo v2, "string-array"

    .line 12
    invoke-interface {p0, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13
    invoke-interface {p0, v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 14
    check-cast v0, [Ljava/lang/String;

    .line 15
    array-length v1, v0

    :goto_1
    if-ge v6, v1, :cond_2

    aget-object v3, v0, v6

    .line 16
    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 17
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 18
    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 19
    :cond_2
    invoke-interface {p0, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 20
    :cond_3
    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_4

    const-string v2, "data"

    .line 21
    invoke-interface {p0, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 22
    invoke-interface {p0, v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 23
    check-cast v0, Landroid/os/Bundle;

    invoke-static {p0, v0}, Lmega/config/XmlData;->write(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    .line 24
    invoke-interface {p0, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 25
    :cond_4
    instance-of v2, v0, [Landroid/os/Parcelable;

    if-eqz v2, :cond_0

    const-string v2, "data-array"

    .line 26
    invoke-interface {p0, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 27
    invoke-interface {p0, v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 28
    check-cast v0, [Landroid/os/Parcelable;

    .line 29
    array-length v1, v0

    :goto_2
    if-ge v6, v1, :cond_6

    aget-object v3, v0, v6

    .line 30
    instance-of v4, v3, Landroid/os/Bundle;

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    const-string v4, "item"

    .line 31
    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 32
    check-cast v3, Landroid/os/Bundle;

    invoke-static {p0, v3}, Lmega/config/XmlData;->write(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    .line 33
    invoke-interface {p0, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 34
    :cond_6
    invoke-interface {p0, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public getDetail()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lmega/config/XmlData;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmega/config/XmlData;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lmega/config/XmlData;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public getXmlData(Ljava/lang/String;)Lmega/config/XmlData;
    .locals 0

    iget-object p0, p0, Lmega/config/XmlData;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lmega/config/XmlData;

    invoke-direct {p1, p0}, Lmega/config/XmlData;-><init>(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public getXmlDataArray(Ljava/lang/String;)[Lmega/config/XmlData;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lmega/config/XmlData;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lmega/config/XmlData;

    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_2

    aget-object v1, p0, p1

    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    new-instance v2, Lmega/config/XmlData;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v2, v1}, Lmega/config/XmlData;-><init>(Landroid/os/Bundle;)V

    aput-object v2, v0, p1

    goto :goto_1

    :cond_1
    new-instance v1, Lmega/config/XmlData;

    invoke-direct {v1}, Lmega/config/XmlData;-><init>()V

    aput-object v1, v0, p1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_2
    new-array p0, p1, [Lmega/config/XmlData;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lmega/config/XmlData;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lmega/config/XmlData;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lmega/config/XmlData;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public putXmlData(Ljava/lang/String;Lmega/config/XmlData;)V
    .locals 0

    iget-object p0, p0, Lmega/config/XmlData;->mBundle:Landroid/os/Bundle;

    iget-object p2, p2, Lmega/config/XmlData;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public putXmlDataArray(Ljava/lang/String;[Lmega/config/XmlData;)V
    .locals 3

    array-length v0, p2

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    aget-object v2, p2, v1

    iget-object v2, v2, Lmega/config/XmlData;->mBundle:Landroid/os/Bundle;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmega/config/XmlData;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0

    iget-object p0, p0, Lmega/config/XmlData;->mBundle:Landroid/os/Bundle;

    .line 1
    invoke-static {p1, p0}, Lmega/config/XmlData;->write(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    return-void
.end method
