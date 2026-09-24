### Assignment-1

## 1. Explain the linking rule in this part's Makefile: `$(TARGET): $(OBJECTS)`. How does it differ from a Makefile rule that links against a library?

The rule `$(TARGET): $(OBJECTS)` means that the target executable depends on all the object files listed in `$(OBJECTS)`.

## 2.What is a git tag and why is it useful in a project? What is the difference between a simple tag and an annotated tag?
A Git tag is a name assigned to a specific commit. It is commonly used to mark important points in a project's history, such as completed versions or releases. Tags are useful because they make it easy to identify and return to a specific version of a project.
An annotated tag is a full Git object containing additional information such as the tagger, date, and a message.
## 3.What is the purpose of creating a "Release" on GitHub? What is the significance of attaching binaries (like your client executable) to it?
A GitHub Release provides a formal, user-friendly version of a project based on a particular Git tag. It allows the developer to provide release notes and make a specific version of the project easy for others to download. Attaching binaries such as the client executable is useful because users can download and run the already-compiled program without having to compile the source code themselves.

## 4. What is Position-Independent Code (`-fPIC`) and why is it a fundamental requirement for creating shared libraries?
Position-Independent Code (PIC) is code that can execute correctly regardless of where it is loaded into memory. The `-fPIC` option tells GCC to generate position-independent machine code. This is important for shared libraries because a shared library can be loaded at different memory addresses by different programs.

## 5.Explain the difference in file size between your static and dynamic clients. Why does this difference exist?
The static client is generally larger than the dynamic client because the required library code is copied into the executable during static linking.

## 6.What is the LD_LIBRARY_PATH environment variable? Why was it necessary to set it for your program to run, and what does this tell you about the responsibilities of the operating system's dynamic loader?
LD_LIBRARY_PATH is an environment variable that specifies additional directories where the dynamic linker/loader should search for shared libraries.

## 7. Compare the Makefile from Part 2 and Part 3. What are the key differences in the variables and rules that enable the creation of a static library?
The main difference is that the Part 2 Makefile builds the executable directly from the object files, while the Part 3 Makefile creates a static library first and then links the executable against that library In the static-library Makefile, a library variable is added:

## 8.What is the purpose of the ar command? Why is ranlib often used immediately after it?
The ar command is used to create and modify archive files. In C development, it is commonly used to create static libraries. ranlib is traditionally used to generate or update this symbol index:

## 9.When you run nm on your client_static executable, are the symbols for functions like mystrlen present? What does this tell you about how static linking works?
If mystrlen is actually implemented and used by client_static, its symbol can be found in the executable using:
nm client_static

