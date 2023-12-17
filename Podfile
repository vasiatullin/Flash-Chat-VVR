platform :ios, '13.0'

target 'Flash Chat iOS13' do
 use_frameworks!

  # Pods for Flash Chat iOS13
  pod 'Firebase/Auth'
  pod 'Firebase/Firestore'
  
end

post_integrate do |installer|
  main_project = installer.aggregate_targets[0].user_project
  pods_project = installer.pods_project
  targets = main_project.targets + pods_project.targets
  targets.each do |target|
    run_script_build_phases = target.build_phases.filter { |phase| phase.is_a?(Xcodeproj::Project::Object::PBXShellScriptBuildPhase) }
    cocoapods_run_script_build_phases = run_script_build_phases.filter { |phase| phase.name.start_with?("[CP") }
    cocoapods_run_script_build_phases.each do |run_script|
      next unless (run_script.input_paths || []).empty? && (run_script.output_paths || []).empty?
      run_script.always_out_of_date = "1"
    end
  end
  main_project.save
  pods_project.save
end
