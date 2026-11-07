package com.android.server.wm;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.os.FileUtils;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.Xml;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.XmlUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.function.Predicate;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes2.dex */
public class TaskPersister implements PersisterQueue.Listener {
    static final boolean DEBUG = false;
    private static final String IMAGES_DIRNAME = "recent_images";
    static final String IMAGE_EXTENSION = ".png";
    private static final String PERSISTED_TASK_IDS_FILENAME = "persisted_taskIds.txt";
    static final String TAG = "TaskPersister";
    private static final String TAG_TASK = "task";
    private static final String TASKS_DIRNAME = "recent_tasks";
    private static final String TASK_FILENAME_SUFFIX = "_task.xml";
    private final Object mIoLock;
    private final PersisterQueue mPersisterQueue;
    private final RecentTasks mRecentTasks;
    private final ActivityTaskManagerService mService;
    private final ActivityStackSupervisor mStackSupervisor;
    private final File mTaskIdsDir;
    private final SparseArray<SparseBooleanArray> mTaskIdsInFile;
    private final ArraySet<Integer> mTmpTaskIds;

    TaskPersister(File systemDir, ActivityStackSupervisor stackSupervisor, ActivityTaskManagerService service, RecentTasks recentTasks, PersisterQueue persisterQueue) {
        this.mTaskIdsInFile = new SparseArray<>();
        this.mIoLock = new Object();
        this.mTmpTaskIds = new ArraySet<>();
        File legacyImagesDir = new File(systemDir, IMAGES_DIRNAME);
        if (legacyImagesDir.exists() && (!FileUtils.deleteContents(legacyImagesDir) || !legacyImagesDir.delete())) {
            Slog.i(TAG, "Failure deleting legacy images directory: " + legacyImagesDir);
        }
        File legacyTasksDir = new File(systemDir, TASKS_DIRNAME);
        if (legacyTasksDir.exists() && (!FileUtils.deleteContents(legacyTasksDir) || !legacyTasksDir.delete())) {
            Slog.i(TAG, "Failure deleting legacy tasks directory: " + legacyTasksDir);
        }
        this.mTaskIdsDir = new File(Environment.getDataDirectory(), "system_de");
        this.mStackSupervisor = stackSupervisor;
        this.mService = service;
        this.mRecentTasks = recentTasks;
        this.mPersisterQueue = persisterQueue;
        persisterQueue.addListener(this);
    }

    TaskPersister(File workingDir) {
        this.mTaskIdsInFile = new SparseArray<>();
        this.mIoLock = new Object();
        this.mTmpTaskIds = new ArraySet<>();
        this.mTaskIdsDir = workingDir;
        this.mStackSupervisor = null;
        this.mService = null;
        this.mRecentTasks = null;
        PersisterQueue persisterQueue = new PersisterQueue();
        this.mPersisterQueue = persisterQueue;
        persisterQueue.addListener(this);
    }

    private void removeThumbnails(final Task task) {
        this.mPersisterQueue.removeItems(new Predicate() { // from class: com.android.server.wm.-$$Lambda$TaskPersister$8MhgCrM41UuyRqTjWwKtfifKRLo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return TaskPersister.lambda$removeThumbnails$0(task, (TaskPersister.ImageWriteQueueItem) obj);
            }
        }, ImageWriteQueueItem.class);
    }

    static /* synthetic */ boolean lambda$removeThumbnails$0(Task task, ImageWriteQueueItem item) {
        File file = new File(item.mFilePath);
        return file.getName().startsWith(Integer.toString(task.mTaskId));
    }

    SparseBooleanArray loadPersistedTaskIdsForUser(int userId) {
        if (this.mTaskIdsInFile.get(userId) != null) {
            return this.mTaskIdsInFile.get(userId).clone();
        }
        SparseBooleanArray persistedTaskIds = new SparseBooleanArray();
        synchronized (this.mIoLock) {
            BufferedReader reader = null;
            try {
                reader = new BufferedReader(new FileReader(getUserPersistedTaskIdsFile(userId)));
                while (true) {
                    String line = reader.readLine();
                    if (line == null) {
                        break;
                    }
                    for (String taskIdString : line.split("\\s+")) {
                        int id = Integer.parseInt(taskIdString);
                        persistedTaskIds.put(id, true);
                    }
                }
            } catch (FileNotFoundException e) {
            } catch (Exception e2) {
                Slog.e(TAG, "Error while reading taskIds file for user " + userId, e2);
            } finally {
                IoUtils.closeQuietly(reader);
            }
        }
        this.mTaskIdsInFile.put(userId, persistedTaskIds);
        return persistedTaskIds.clone();
    }

    void writePersistedTaskIdsForUser(SparseBooleanArray taskIds, int userId) {
        if (userId < 0) {
            return;
        }
        File persistedTaskIdsFile = getUserPersistedTaskIdsFile(userId);
        synchronized (this.mIoLock) {
            BufferedWriter writer = null;
            try {
                try {
                    writer = new BufferedWriter(new FileWriter(persistedTaskIdsFile));
                    for (int i = 0; i < taskIds.size(); i++) {
                        if (taskIds.valueAt(i)) {
                            writer.write(String.valueOf(taskIds.keyAt(i)));
                            writer.newLine();
                        }
                    }
                    IoUtils.closeQuietly(writer);
                } catch (Exception e) {
                    Slog.e(TAG, "Error while writing taskIds file for user " + userId, e);
                    IoUtils.closeQuietly(writer);
                }
            } catch (Throwable th) {
                IoUtils.closeQuietly(writer);
                throw th;
            }
        }
    }

    void unloadUserDataFromMemory(int userId) {
        this.mTaskIdsInFile.delete(userId);
    }

    void wakeup(final Task task, boolean flush) {
        synchronized (this.mPersisterQueue) {
            try {
                if (task != null) {
                    TaskWriteQueueItem item = (TaskWriteQueueItem) this.mPersisterQueue.findLastItem(new Predicate() { // from class: com.android.server.wm.-$$Lambda$TaskPersister$piHtCTZMpbHMTXAk2o7OdlK4Xvc
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return TaskPersister.lambda$wakeup$1(task, (TaskPersister.TaskWriteQueueItem) obj);
                        }
                    }, TaskWriteQueueItem.class);
                    if (item != null && !task.inRecents) {
                        removeThumbnails(task);
                    }
                    if (item == null && task.isPersistable) {
                        this.mPersisterQueue.addItem(new TaskWriteQueueItem(task, this.mService), flush);
                    }
                } else {
                    this.mPersisterQueue.addItem(PersisterQueue.EMPTY_ITEM, flush);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mPersisterQueue.yieldIfQueueTooDeep();
    }

    static /* synthetic */ boolean lambda$wakeup$1(Task task, TaskWriteQueueItem queueItem) {
        return task == queueItem.mTask;
    }

    void flush() {
        this.mPersisterQueue.flush();
    }

    void saveImage(Bitmap image, String filePath) {
        this.mPersisterQueue.updateLastOrAddItem(new ImageWriteQueueItem(filePath, image), false);
    }

    Bitmap getTaskDescriptionIcon(String filePath) {
        Bitmap icon = getImageFromWriteQueue(filePath);
        if (icon != null) {
            return icon;
        }
        return restoreImage(filePath);
    }

    private Bitmap getImageFromWriteQueue(final String filePath) {
        ImageWriteQueueItem item = (ImageWriteQueueItem) this.mPersisterQueue.findLastItem(new Predicate() { // from class: com.android.server.wm.-$$Lambda$TaskPersister$mW0HULrR8EtZ9La-pL9kLTnHSzk
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((TaskPersister.ImageWriteQueueItem) obj).mFilePath.equals(filePath);
            }
        }, ImageWriteQueueItem.class);
        if (item != null) {
            return item.mImage;
        }
        return null;
    }

    private String fileToString(File file) {
        String newline = System.lineSeparator();
        try {
            BufferedReader reader = new BufferedReader(new FileReader(file));
            StringBuffer sb = new StringBuffer(((int) file.length()) * 2);
            while (true) {
                String line = reader.readLine();
                if (line != null) {
                    sb.append(line + newline);
                } else {
                    reader.close();
                    return sb.toString();
                }
            }
        } catch (IOException e) {
            Slog.e(TAG, "Couldn't read file " + file.getName());
            return null;
        }
    }

    private Task taskIdToTask(int taskId, ArrayList<Task> tasks) {
        if (taskId < 0) {
            return null;
        }
        for (int taskNdx = tasks.size() - 1; taskNdx >= 0; taskNdx--) {
            Task task = tasks.get(taskNdx);
            if (task.mTaskId == taskId) {
                return task;
            }
        }
        Slog.e(TAG, "Restore affiliation error looking for taskId=" + taskId);
        return null;
    }

    List<Task> restoreTasksForUserLocked(int userId, SparseBooleanArray preaddedTasks) {
        ArrayList<Task> tasks = new ArrayList<>();
        ArraySet<Integer> recoveredTaskIds = new ArraySet<>();
        File userTasksDir = getUserTasksDir(userId);
        File[] recentFiles = userTasksDir.listFiles();
        if (recentFiles == null) {
            Slog.e(TAG, "restoreTasksForUserLocked: Unable to list files from " + userTasksDir);
            return tasks;
        }
        int taskNdx = 0;
        while (true) {
            int i = 1;
            if (taskNdx >= recentFiles.length) {
                break;
            }
            File taskFile = recentFiles[taskNdx];
            if (taskFile.getName().endsWith(TASK_FILENAME_SUFFIX)) {
                try {
                    int taskId = Integer.parseInt(taskFile.getName().substring(0, taskFile.getName().length() - TASK_FILENAME_SUFFIX.length()));
                    if (preaddedTasks.get(taskId, false)) {
                        try {
                            Slog.w(TAG, "Task #" + taskId + " has already been created so we don't restore again");
                            recentFiles = recentFiles;
                            taskNdx = taskNdx;
                        } catch (NumberFormatException e) {
                            e = e;
                            Slog.w(TAG, "Unexpected task file name", e);
                        }
                    } else {
                        BufferedReader reader = null;
                        try {
                            reader = new BufferedReader(new FileReader(taskFile));
                            XmlPullParser in = Xml.newPullParser();
                            in.setInput(reader);
                            while (true) {
                                int event = in.next();
                                if (event == i || event == 3) {
                                    break;
                                }
                                String name = in.getName();
                                if (event != 2) {
                                    recentFiles = recentFiles;
                                    taskNdx = taskNdx;
                                } else if (TAG_TASK.equals(name)) {
                                    Task task = Task.restoreFromXml(in, this.mStackSupervisor);
                                    if (task != null) {
                                        recentFiles = recentFiles;
                                        try {
                                            int taskId2 = task.mTaskId;
                                            taskNdx = taskNdx;
                                            try {
                                                try {
                                                    if (this.mService.mRootWindowContainer.anyTaskForId(taskId2, 1) != null) {
                                                        Slog.wtf(TAG, "Existing task with taskId " + taskId2 + "found");
                                                    } else if (userId != task.mUserId) {
                                                        Slog.wtf(TAG, "Task with userId " + task.mUserId + " found in " + userTasksDir.getAbsolutePath());
                                                    } else {
                                                        this.mStackSupervisor.setNextTaskIdForUser(taskId2, userId);
                                                        task.isPersistable = true;
                                                        tasks.add(task);
                                                        recoveredTaskIds.add(Integer.valueOf(taskId2));
                                                    }
                                                } catch (Exception e2) {
                                                    e = e2;
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                IoUtils.closeQuietly(reader);
                                                if (0 != 0) {
                                                    taskFile.delete();
                                                }
                                                throw th;
                                            }
                                        } catch (Exception e3) {
                                            e = e3;
                                            taskNdx = taskNdx;
                                        } catch (Throwable th2) {
                                            th = th2;
                                        }
                                    } else {
                                        recentFiles = recentFiles;
                                        taskNdx = taskNdx;
                                        Slog.e(TAG, "restoreTasksForUserLocked: Unable to restore taskFile=" + taskFile + ": " + fileToString(taskFile));
                                    }
                                } else {
                                    recentFiles = recentFiles;
                                    taskNdx = taskNdx;
                                    Slog.wtf(TAG, "restoreTasksForUserLocked: Unknown xml event=" + event + " name=" + name);
                                }
                                XmlUtils.skipCurrentTag(in);
                                recentFiles = recentFiles;
                                taskNdx = taskNdx;
                                i = 1;
                                Slog.wtf(TAG, "Unable to parse " + taskFile + ". Error ", e);
                                StringBuilder sb = new StringBuilder();
                                sb.append("Failing file: ");
                                sb.append(fileToString(taskFile));
                                Slog.e(TAG, sb.toString());
                                IoUtils.closeQuietly(reader);
                                if (1 != 0) {
                                    taskFile.delete();
                                }
                            }
                            recentFiles = recentFiles;
                            taskNdx = taskNdx;
                            IoUtils.closeQuietly(reader);
                            if (0 != 0) {
                                taskFile.delete();
                            }
                        } catch (Exception e4) {
                            e = e4;
                            recentFiles = recentFiles;
                            taskNdx = taskNdx;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                } catch (NumberFormatException e5) {
                    e = e5;
                }
            } else {
                recentFiles = recentFiles;
                taskNdx = taskNdx;
            }
            taskNdx++;
            recentFiles = recentFiles;
        }
        removeObsoleteFiles(recoveredTaskIds, userTasksDir.listFiles());
        for (int taskNdx2 = tasks.size() - 1; taskNdx2 >= 0; taskNdx2--) {
            Task task2 = tasks.get(taskNdx2);
            task2.setPrevAffiliate(taskIdToTask(task2.mPrevAffiliateTaskId, tasks));
            task2.setNextAffiliate(taskIdToTask(task2.mNextAffiliateTaskId, tasks));
        }
        Collections.sort(tasks, new Comparator<Task>() { // from class: com.android.server.wm.TaskPersister.1
            @Override // java.util.Comparator
            public int compare(Task lhs, Task rhs) {
                long diff = rhs.mLastTimeMoved - lhs.mLastTimeMoved;
                if (diff < 0) {
                    return -1;
                }
                if (diff > 0) {
                    return 1;
                }
                return 0;
            }
        });
        return tasks;
    }

    @Override // com.android.server.wm.PersisterQueue.Listener
    public void onPreProcessItem(boolean queueEmpty) {
        if (queueEmpty) {
            this.mTmpTaskIds.clear();
            synchronized (this.mService.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    this.mRecentTasks.getPersistableTaskIds(this.mTmpTaskIds);
                    this.mService.mWindowManager.removeObsoleteTaskFiles(this.mTmpTaskIds, this.mRecentTasks.usersWithRecentsLoadedLocked());
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            removeObsoleteFiles(this.mTmpTaskIds);
        }
        writeTaskIdsFiles();
    }

    private static void removeObsoleteFiles(ArraySet<Integer> persistentTaskIds, File[] files) {
        if (files == null) {
            Slog.e(TAG, "File error accessing recents directory (directory doesn't exist?).");
            return;
        }
        for (File file : files) {
            String filename = file.getName();
            int taskIdEnd = filename.indexOf(95);
            if (taskIdEnd > 0) {
                try {
                    int taskId = Integer.parseInt(filename.substring(0, taskIdEnd));
                    if (!persistentTaskIds.contains(Integer.valueOf(taskId))) {
                        file.delete();
                    }
                } catch (Exception e) {
                    Slog.wtf(TAG, "removeObsoleteFiles: Can't parse file=" + file.getName());
                    file.delete();
                }
            }
        }
    }

    private void writeTaskIdsFiles() {
        SparseArray<SparseBooleanArray> changedTaskIdsPerUser = new SparseArray<>();
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                for (int userId : this.mRecentTasks.usersWithRecentsLoadedLocked()) {
                    SparseBooleanArray taskIdsToSave = this.mRecentTasks.getTaskIdsForUser(userId);
                    SparseBooleanArray persistedIdsInFile = this.mTaskIdsInFile.get(userId);
                    if (persistedIdsInFile == null || !persistedIdsInFile.equals(taskIdsToSave)) {
                        SparseBooleanArray taskIdsToSaveCopy = taskIdsToSave.clone();
                        this.mTaskIdsInFile.put(userId, taskIdsToSaveCopy);
                        changedTaskIdsPerUser.put(userId, taskIdsToSaveCopy);
                    }
                }
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        for (int i = 0; i < changedTaskIdsPerUser.size(); i++) {
            writePersistedTaskIdsForUser(changedTaskIdsPerUser.valueAt(i), changedTaskIdsPerUser.keyAt(i));
        }
    }

    private void removeObsoleteFiles(ArraySet<Integer> persistentTaskIds) {
        int[] candidateUserIds;
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                candidateUserIds = this.mRecentTasks.usersWithRecentsLoadedLocked();
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        for (int userId : candidateUserIds) {
            removeObsoleteFiles(persistentTaskIds, getUserImagesDir(userId).listFiles());
            removeObsoleteFiles(persistentTaskIds, getUserTasksDir(userId).listFiles());
        }
    }

    static Bitmap restoreImage(String filename) {
        return BitmapFactory.decodeFile(filename);
    }

    private File getUserPersistedTaskIdsFile(int userId) {
        File userTaskIdsDir = new File(this.mTaskIdsDir, String.valueOf(userId));
        if (!userTaskIdsDir.exists() && !userTaskIdsDir.mkdirs()) {
            Slog.e(TAG, "Error while creating user directory: " + userTaskIdsDir);
        }
        return new File(userTaskIdsDir, PERSISTED_TASK_IDS_FILENAME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File getUserTasksDir(int userId) {
        return new File(Environment.getDataSystemCeDirectory(userId), TASKS_DIRNAME);
    }

    static File getUserImagesDir(int userId) {
        return new File(Environment.getDataSystemCeDirectory(userId), IMAGES_DIRNAME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean createParentDirectory(String filePath) {
        File parentDir = new File(filePath).getParentFile();
        return parentDir.exists() || parentDir.mkdirs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class TaskWriteQueueItem implements PersisterQueue.WriteQueueItem {
        private final ActivityTaskManagerService mService;
        private final Task mTask;

        TaskWriteQueueItem(Task task, ActivityTaskManagerService service) {
            this.mTask = task;
            this.mService = service;
        }

        private StringWriter saveToXml(Task task) throws Exception {
            XmlSerializer xmlSerializer = new FastXmlSerializer();
            StringWriter stringWriter = new StringWriter();
            xmlSerializer.setOutput(stringWriter);
            xmlSerializer.startDocument(null, true);
            xmlSerializer.startTag(null, TaskPersister.TAG_TASK);
            task.saveToXml(xmlSerializer);
            xmlSerializer.endTag(null, TaskPersister.TAG_TASK);
            xmlSerializer.endDocument();
            xmlSerializer.flush();
            return stringWriter;
        }

        @Override // com.android.server.wm.PersisterQueue.WriteQueueItem
        public void process() throws Exception {
            StringWriter stringWriter = null;
            Task task = this.mTask;
            synchronized (this.mService.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (task.inRecents) {
                        try {
                            stringWriter = saveToXml(task);
                        } catch (Exception e) {
                        }
                    }
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            if (stringWriter != null) {
                AtomicFile atomicFile = null;
                try {
                    File userTasksDir = TaskPersister.getUserTasksDir(task.mUserId);
                    if (!userTasksDir.isDirectory() && !userTasksDir.mkdirs()) {
                        Slog.e(TaskPersister.TAG, "Failure creating tasks directory for user " + task.mUserId + ": " + userTasksDir + " Dropping persistence for task " + task);
                        return;
                    }
                    AtomicFile atomicFile2 = new AtomicFile(new File(userTasksDir, String.valueOf(task.mTaskId) + TaskPersister.TASK_FILENAME_SUFFIX));
                    FileOutputStream file = atomicFile2.startWrite();
                    file.write(stringWriter.toString().getBytes());
                    file.write(10);
                    atomicFile2.finishWrite(file);
                } catch (IOException e2) {
                    if (0 != 0) {
                        atomicFile.failWrite(null);
                    }
                    Slog.e(TaskPersister.TAG, "Unable to open " + ((Object) null) + " for persisting. " + e2);
                }
            }
        }

        public String toString() {
            return "TaskWriteQueueItem{task=" + this.mTask + "}";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class ImageWriteQueueItem implements PersisterQueue.WriteQueueItem<ImageWriteQueueItem> {
        final String mFilePath;
        Bitmap mImage;

        ImageWriteQueueItem(String filePath, Bitmap image) {
            this.mFilePath = filePath;
            this.mImage = image;
        }

        @Override // com.android.server.wm.PersisterQueue.WriteQueueItem
        public void process() {
            String filePath = this.mFilePath;
            if (!TaskPersister.createParentDirectory(filePath)) {
                Slog.e(TaskPersister.TAG, "Error while creating images directory for file: " + filePath);
                return;
            }
            Bitmap bitmap = this.mImage;
            FileOutputStream imageFile = null;
            try {
                try {
                    imageFile = new FileOutputStream(new File(filePath));
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, imageFile);
                } catch (Exception e) {
                    Slog.e(TaskPersister.TAG, "saveImage: unable to save " + filePath, e);
                }
            } finally {
                IoUtils.closeQuietly(imageFile);
            }
        }

        @Override // com.android.server.wm.PersisterQueue.WriteQueueItem
        public boolean matches(ImageWriteQueueItem item) {
            return this.mFilePath.equals(item.mFilePath);
        }

        @Override // com.android.server.wm.PersisterQueue.WriteQueueItem
        public void updateFrom(ImageWriteQueueItem item) {
            this.mImage = item.mImage;
        }

        public String toString() {
            return "ImageWriteQueueItem{path=" + this.mFilePath + ", image=(" + this.mImage.getWidth() + "x" + this.mImage.getHeight() + ")}";
        }
    }
}
